import 'package:flutter/material.dart';

import '../../../../res/assets.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    super.key,
    this.constraints,
  });
  final constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Image.asset(
        ImageAsset.loginAssetImg,
        height: constraints.maxHeight * 0.12,
      ),
    );
  }
}