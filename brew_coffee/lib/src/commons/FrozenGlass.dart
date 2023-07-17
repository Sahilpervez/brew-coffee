import 'dart:ui';

import 'package:flutter/material.dart';

class FrozenGlassContainer extends StatelessWidget {
  const FrozenGlassContainer(
      {super.key,
      this.height,
      this.width,
      this.child,
      this.borderRadius = 0,
      this.blurColor = Colors.transparent,
      this.blurX = 12,
      this.blurY = 12,
      this.gradColorTopLeft,
      this.gradColorTopRIght,
      this.onlyRadius,
      this.isBorder = true, this.topRightRadius});

  final double? height;
  final double? width;
  final Widget? child;
  final double borderRadius;
  final Color? blurColor;
  final double blurX;
  final double blurY;
  final Color? gradColorTopLeft;
  final Color? gradColorTopRIght;
  final bool? onlyRadius;
  final bool? isBorder;
  final bool? topRightRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: (onlyRadius != true)
          ? BorderRadius.circular(borderRadius)
          : BorderRadius.only(
              bottomLeft: Radius.circular(borderRadius),
              topLeft: Radius.circular(borderRadius),
            ),
      child: Container(
        height: height,
        width: width,
        color: blurColor,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: blurX,
                sigmaY: blurY,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: (onlyRadius != true)
                    ? BorderRadius.circular(borderRadius)
                    : BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        topLeft: Radius.circular(borderRadius),
                        topRight: (topRightRadius == true) ? Radius.circular(borderRadius):Radius.circular(0),
                      ),
                border: (isBorder == true)
                    ? Border.all(
                        color: Colors.white.withOpacity(0.13),
                      )
                    : null,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    (gradColorTopLeft == null)
                        ? Colors.white.withOpacity(0.15)
                        : gradColorTopLeft!,
                    (gradColorTopRIght == null)
                        ? Colors.white.withOpacity(0.05)
                        : gradColorTopRIght!,
                  ],
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
