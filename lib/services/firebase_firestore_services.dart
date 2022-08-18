import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/services/firebase_auth_services.dart';
// rating = sum{start* raters} / total raters

class FirestoreDatabaseServices {
  static String? userId = FirebaseAuthServices.userId;
  static FirebaseFirestore db = FirebaseFirestore.instance;

  // Create/add
  static Future<void> addUserDocumentStructure() async {
    Map<String, dynamic> userDocStruct = {
      'articles_favourited': [],
      'articles_liked': [],
      'commented_on': [],
      'articles_rated': [],
      'isEditor': false
    };

    DocumentReference<Map<String, dynamic>> userDoc =
        db.collection('users_data').doc(userId);
    if (!(await userDoc.get()).exists) {
      await userDoc.set(userDocStruct);
    }
  }

  static Future<void> addCommentToArticle({
    required String articleId,
    required String commentText,
  }) async {
    // add comment to article
    DocumentReference<Map<String, dynamic>> commentsReference = db
        .collection('articles_data')
        .doc(articleId)
        .collection('comments')
        .doc();

    await commentsReference.set({
      'commentText': commentText,
      'dateCreated': FieldValue.serverTimestamp(),
      'userId': userId.toString()
    }, SetOptions(merge: true));

    // add info to user
    Map<String, String> commentInfo = {
      'articleId': articleId,
      'commentId': commentsReference.id,
    };

    await db.collection('users_data').doc(userId).update({
      'commented_on': FieldValue.arrayUnion([commentInfo])
    });
  }

  static Future<void> rateArticle({
    required String articleId,
    required int userRating,
  }) async {
    // increment the rating of the article
    await db.collection('articles_data').doc(articleId).update({
      'rating': {userRating: FieldValue.increment(1)}
    });

    // add rating info to user
    Map<String, dynamic> ratingInfo = {
      'articleId': articleId,
      'ratingValue': userRating
    };

    await db.collection('users_data').doc(userId).update({
      'articles_rated': FieldValue.arrayUnion([ratingInfo])
    });
  }

  static Future<void> likeArticle({
    required String articleId,
  }) async {
    // increment the likes number for the article
    await db
        .collection('articles_data')
        .doc(articleId)
        .update({'likesNO': FieldValue.increment(1)});

    // add like info to user
    await db.collection('users_data').doc(userId).update({
      'articles_liked': FieldValue.arrayUnion([articleId])
    });
  }

  static Future<void> addArticleToFavourited({
    required String articleId,
  }) async {
    // add article to user favourites
    await db.collection('users_data').doc(userId).update({
      'articles_favourited': FieldValue.arrayUnion([articleId])
    });
  }

  // Delete/Cancel
  static Future<void> cancelArticlelLike({
    required String articleId,
  }) async {
    // decrement the likes of the article by one
    await db
        .collection('articles_data')
        .doc(articleId)
        .update({'likesNO': FieldValue.increment(-1)});

    // remove the like info from user
    await db.collection('users_data').doc(userId).update({
      'articles_liked': FieldValue.arrayRemove([articleId])
    });
  }

  static Future<void> deleteArticleComment({
    required String articleId,
    required String commentId,
  }) async {
    // delete the comment from the article
    await db
        .collection('articles_data')
        .doc(articleId)
        .collection('comments')
        .doc(commentId)
        .delete();
  }

  static Future<void> deleteArticleLikeInfo({
    required String articleId,
  }) async {
    // decrement likes from article
    await db
        .collection('articles_data')
        .doc(articleId)
        .update({'likesNO': FieldValue.increment(-1)});

    // remove the article like info from user
    await db.collection('users_data').doc(userId).update({
      'articles_liked': FieldValue.arrayRemove([articleId])
    });
  }

  static Future<void> deleteArticleFavouriteInfo({
    required String articleId,
  }) async {
    // remove the article from user favourites
    await db.collection('users_data').doc(userId).update({
      'articles_favourited': FieldValue.arrayRemove([articleId])
    });
  }

  static Future<void> cancelArticleRate({
    required String articleId,
    required int userRating,
  }) async {
    // decrement the rating in the rating map of the article
    await db.collection('articles_data').doc(articleId).update({
      'rating': {userRating: FieldValue.increment(-1)}
    });

    // remove the rating info from the user
    Map<String, dynamic> ratingInfo = {
      'articleId': articleId,
      'ratingValue': userRating
    };

    await db.collection('users_data').doc(userId).update({
      'articles_rated': FieldValue.arrayRemove([ratingInfo])
    });
  }

  // Get data
  static Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      get10CategoryArticles({required String category}) async {
    var articles = await db
        .collection('articles_data')
        .where('categories', arrayContains: category)
        .limitToLast(10)
        .get();
    return articles.docs;
  }

  static Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      getCategoryArticles({required String category}) async {
    var articles = await db
        .collection('articles_data')
        .where('categories', arrayContains: category)
        .get();
    return articles.docs;
  }

  static Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      getArticleComments({required String articleId}) async {
    var comments = await db
        .collection('articles_data')
        .doc(articleId)
        .collection('comments')
        .get();
    return comments.docs;
  }

  static Future<Map<String, dynamic>?> getArticleData({
    required QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot,
  }) async {
    var articleData = documentSnapshot.data();
    return articleData;
  }

  static Future<Map<String, dynamic>?> getUserData() async {
    var userData = await db.collection('users_data').doc(userId).get();
    return userData.data();
  }
}
