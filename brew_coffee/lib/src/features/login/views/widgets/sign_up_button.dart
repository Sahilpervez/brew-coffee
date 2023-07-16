
import 'dart:math';

import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    this.constraints,
    this.onPressed,
  });
  final constraints;
  final Function? onPressed;
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
            borderRadius: BorderRadius.circular(30),
            color: Colors.transparent,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: const Center(
            child: Text(
              "SignUp",
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
