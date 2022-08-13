import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/firebase_options.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/intry_page.dart';
import 'package:myapp/services/firebase_auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
      // AccessWrapper(),
    ),
  );
}

class AccessWrapper extends StatelessWidget {
  const AccessWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuthServices.user;
    bool? isVerified = FirebaseAuthServices.userIsVerified;
    if (user != null && isVerified == true) {
      return const Home();
    } else {
      return const IntryPage();
    }
  }
}
