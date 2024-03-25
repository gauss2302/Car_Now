import 'package:cars/features/auth/presentation/widgets/AuthBotton.dart';
import 'package:cars/features/auth/presentation/widgets/AuthField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            AuthField(
                hintText: "Email", textEditingController: emailController),
            const SizedBox(
              height: 30,
            ),
            AuthField(
                hintText: "Password",
                textEditingController: passwordController),
            const SizedBox(
              height: 30,
            ),
            AuthBotton(
              text: 'Sign Up',
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 40,
                      height: 40,
                      child: const Image(
                          image: AssetImage('lib/assets/icons/apple.png'))),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 40,
                      height: 40,
                      child: const Image(
                          image: AssetImage('lib/assets/icons/google.png'))),
                ),
                // Container(
                //   width: 40,
                //   height: 40,
                //   child: Icon(Icons.facebook),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
