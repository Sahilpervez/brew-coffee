import 'package:brew_coffee/src/commons/FrozenGlass.dart';
import 'package:brew_coffee/src/res/assets.dart';
import 'package:flutter/material.dart';

import '../../commons/bottom_nav_bar.dart';
import 'widgets/instant_beverages.dart';
import 'widgets/popular_beverages.dart';
import 'widgets/side_sheet.dart';
import 'widgets/topbar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  static const routePath = "/home";
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff252525),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  (size.width > 520)
                      ? ImageAsset.loginBackground2
                      : ImageAsset.kibg6,
                ),
                fit: BoxFit.cover),
          ),
          child: FrozenGlassContainer(
            blurColor: Colors.grey.withOpacity(0.1),
            blurX: 8,
            blurY: 8,
            child: Stack(
              children: [
                if (size.width > 520)
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageAsset.kibg6,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      height: size.height,
                      width: size.width * 0.6,
                      child: const FrozenGlassContainer(
                        onlyRadius: true,
                        borderRadius: 25,
                        blurX: 2,
                        blurY: 2,
                      ),
                    ),
                  ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: FrozenGlassContainer(
                    onlyRadius: (size.width > 520) ? true : false,
                    borderRadius: (size.width > 520) ? 25 : 0,
                    isBorder: false,
                    height: (size.width < 520)
                        ? (size.height * 0.24 < 160)
                            ? size.height - 160
                            : size.height * 0.76
                        : size.height - 100,
                    width: (size.width < 520) ? size.width : size.width * 0.6,
                    gradColorTopLeft: Colors.black.withOpacity(0.4),
                    gradColorTopRIght: Colors.black.withOpacity(0.4),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              width: (size.width > 520)
                                  ? size.width * 0.6
                                  : size.width,
                              child: Text(
                                "Most Popular Beverages",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                            PopularBeverages(ctx:context,controller: _controller),
                            InstantBeverages(ctx:context,size: size),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                TopBar(size: size),
                if (size.width > 520) SideSheet(size: size),
                BottomNavBar(ctx: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
