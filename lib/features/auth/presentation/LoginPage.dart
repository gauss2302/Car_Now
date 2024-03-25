import 'package:cars/features/auth/presentation/widgets/AuthBotton.dart';
import 'package:cars/features/auth/presentation/widgets/AuthField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign In",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            AuthField(
              hintText: 'Email',
              textEditingController: emailController,
            ),
            const SizedBox(
              height: 30,
            ),
            AuthField(
              hintText: 'Password',
              textEditingController: passwordController,
            ),
            const SizedBox(
              height: 30,
            ),
            AuthBotton(
              text: 'Sign In',
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
