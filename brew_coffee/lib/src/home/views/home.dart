import 'package:brew_coffee/src/commons/FrozenGlass.dart';
import 'package:brew_coffee/src/res/assets.dart';
import 'package:flutter/material.dart';

import '../../commons/bottom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routePath = "/home";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff252525),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                (size.width > 520)
                    ? ImageAsset.loginBackground2
                    : ImageAsset.homeScreenBackground,
              ),
              fit: BoxFit.cover),
        ),
        child: FrozenGlassContainer(
          blurColor: Colors.grey.withOpacity(0.1),
          blurX: 8,
          blurY: 8,
          child: Stack(
            children: [
              if (size.width < 520)
                Positioned(
                    top: 0,
                    child: FrozenGlassContainer(
                      isBorder: false,
                      height: size.height * 0.3,
                      width: size.width,
                      gradColorTopLeft: Colors.black.withOpacity(0.15),
                      gradColorTopRIght: Colors.black.withOpacity(0.15),
                    ),
                  ),
              
              if (size.width > 520)
                Positioned(
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            ImageAsset.homeScreenBackground,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25 ))
                    ),
                    height: size.height,
                    width: size.width * 0.6,
                    child: const FrozenGlassContainer(
                        onlyRadius: true,
                        borderRadius: 25,
                      ),
                  ),
                ),
              Positioned(
                bottom: 0,
                   right: 0,
                   child: FrozenGlassContainer(
                    onlyRadius:(size.width >520)? true:false,
                    borderRadius: (size.width>520)? 25:0,
                     isBorder: false,
                     height: (size.width<520)?size.height * 0.7 :size.height,
                      width: (size.width<520)?size.width:size.width * 0.6,
                      gradColorTopLeft: Colors.black.withOpacity(0.4),
                      gradColorTopRIght: Colors.black.withOpacity(0.4),
                      child: const Align(child: Center(child: Text("Brew Your Coffee\nWith us",
                      textAlign:TextAlign.center,style: TextStyle(color: Colors.white)))),
                    ),
                  ),
              BottomNavBar(ctx: context),
            ],
          ),
        ),
      ),
    );
  }
}
