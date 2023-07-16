
import 'dart:math';

import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    this.constraints,
    this.onPressed,
  });
  final constraints;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
        onTap: () {
          (onPressed == null)?(){}:onPressed!();
        },
        child: Container(
          width: min(200, constraints.maxWidth * 0.55),
          height: constraints.maxHeight * 0.06,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF4C2A1A), Color(0xFFA67359)],
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xA5000000),
                blurRadius: 15,
                offset: Offset(2, 2),
                spreadRadius: -2,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Inter",
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
