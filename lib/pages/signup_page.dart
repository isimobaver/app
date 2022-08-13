import 'package:flutter/material.dart';
import 'package:myapp/pages/intry_page.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/services/firebase_auth_services.dart';
import 'package:myapp/style/colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passConfController = TextEditingController();

  bool obscureTextIs = true;
  bool obscureTextIs2 = true;
  void _toggle() {
    setState(() {
      obscureTextIs = !obscureTextIs;
    });
  }

  void _toggle2() {
    setState(() {
      obscureTextIs2 = !obscureTextIs2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const IntryPage())),
                icon: const Icon(Icons.chevron_left_rounded),
                color: iconColorOfchevronOFDrawerChooserpages,
                iconSize: 45,
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Just Go',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Create Account',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: obscureTextIs,
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Password',
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
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: TextField(
                obscureText: obscureTextIs2,
                controller: passConfController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Password Confirm',
                  suffixIcon: InkWell(
                    onTap: _toggle,
                    child: Icon(
                      obscureTextIs2
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text('Create'),
                  onPressed: () {
                    FirebaseAuthServices.signupWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                      passwordConfirm: passConfController.text,
                    );
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have account?'),
                TextButton(
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
