// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/style/colors.dart';
// import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureTextIs = true;
  void _toggle() {
    setState(() {
      obscureTextIs = !obscureTextIs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColorOfpages,
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 70, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.blue,
                          maxRadius: 50,
                        ),
                        TextButton(
                          onPressed: () {
                            _showActionSheet(context);
                          },
                          child: const Text(
                            "Change profile photo",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black54,
                    thickness: 0.2,
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Username",
                                style: TextStyle(
                                    color: textColorOfHeaderText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextField(
                                controller: userController,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username"),
                              ),
                            )),
                          ],
                        ),
                        const Divider(
                            color: Colors.black54,
                            thickness: 0.2,
                            height: 5,
                            indent: 105),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    color: textColorOfHeaderText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email"),
                              ),
                            )),
                          ],
                        ),
                        const Divider(
                            color: Colors.black54,
                            thickness: 0.2,
                            height: 5,
                            indent: 105),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    color: textColorOfHeaderText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextField(
                                obscureText: obscureTextIs,
                                controller: passwordController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  suffixIcon: InkWell(
                                    onTap: _toggle,
                                    child: Icon(
                                      obscureTextIs
                                          ? Icons.visibility_off_rounded
                                          : Icons.visibility_rounded,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ],
                        ),
                        const Divider(
                            color: Colors.black54,
                            thickness: 0.2,
                            height: 5,
                            indent: 105),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            buildTopBarDrawer(context)
          ],
        ),
      ),
    );
  }

  ////////////////////////////////////////////////
  Widget buildTopBarDrawer(BuildContext context) {
    return Container(
      height: 55,
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(95),
          bottomRight: Radius.circular(120),
          topRight: Radius.circular(60),
        ),
        color: backgroundColorOfTopBar,
        boxShadow: [
          BoxShadow(
            blurRadius: 90,
            offset: const Offset(0, 0),
            color: shadowColorOfTopBar,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
            flex: 2,
            child: Text(
              "Edit Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColorOfHeaderText,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                print(userController.text);
                print(emailController.text);
                print(passwordController.text);
                Navigator.pop(context);
              },
              child: Text(
                "Done",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColorOfHeaderText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///////////////////////////////
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => const ActionSheet());
  }
}

class ActionSheet extends StatefulWidget {
  const ActionSheet({Key? key}) : super(key: key);

  @override
  State<ActionSheet> createState() => _ActionSheetState();
}

class _ActionSheetState extends State<ActionSheet> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            textOfProfileEditInside,
            style: textStyleOfActionSheetProfileEdit,
          ),
        ),
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            textOfProfileEditInside0,
            style: textStyleOfActionSheetProfileEdit,
          ),
        ),
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            textOfProfileEditInside1,
            style: textStyleOfActionSheetProfileEdit,
          ),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          textOfProfileEditInsideCancel,
          style: textStyleOfCancelOfActionSheetProfileEdit,
        ),
      ),
    );
  }
}
