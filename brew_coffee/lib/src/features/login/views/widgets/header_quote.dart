
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeadingQuote extends StatelessWidget {
  const HeadingQuote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        '"Latte but never late"',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFFABABAB),
          fontSize: min(12, 9.sp),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}