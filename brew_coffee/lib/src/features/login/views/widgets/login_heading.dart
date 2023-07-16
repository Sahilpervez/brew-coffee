
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginHeading extends StatelessWidget {
  const LoginHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment  .start,
        children: [
          Text(
            'Swift',
            style: TextStyle(
              color: Colors.white,
              fontSize: max(31, 12.sp),
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Café',
            style: TextStyle(
              color: Colors.white,
              fontSize: max(17, 9.sp),
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
  }
}
