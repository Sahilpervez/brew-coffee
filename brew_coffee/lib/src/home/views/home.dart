import 'dart:math';

import 'package:brew_coffee/src/commons/FrozenGlass.dart';
import 'package:brew_coffee/src/res/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routePath = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageAsset.homeScreenBackground,
              ),
              fit: BoxFit.cover),
        ),
        child: FrozenGlassContainer(
            blurColor: Colors.grey.withOpacity(0.1),
            blurX: 8,
            blurY: 8,
            child: Stack(
              children: [
                Align(
                alignment: 
                Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: FrozenGlassContainer(
                      height: 70,
                      borderRadius: 20,
                      width: min(MediaQuery.of(context).size.width * 0.9, 374),
                      gradColorTopLeft: Colors.black.withOpacity(0.45),
                      gradColorTopRIght: Colors.black.withOpacity(0.45),
                      child: Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: min(
                                  MediaQuery.of(context).size.width * 0.07, 40)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.35),
                                    border: Border.all(
                                        color: Colors.grey.shade700, width: 1.5),
                                  ),
                                  child: SvgPicture.asset(
                                    ImageAsset.kiNavBarIcon1,
                                    height: 20,width: 20,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageAsset.kiNavBarIcon2,
                                    height: 20,width: 20,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageAsset.kiNavBarIcon3,
                                    height: 20,width: 20,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageAsset.kiNavBarIcon4,
                                    height: 20,width: 20,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageAsset.kiNavBarIcon5,
                                    height: 20,width: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
