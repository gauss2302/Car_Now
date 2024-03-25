import 'package:cars/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthBotton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AuthBotton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(395, 35),
              backgroundColor: AppPallete.transparentColor,
              shadowColor: AppPallete.transparentColor),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          )),
    );
  }
}
