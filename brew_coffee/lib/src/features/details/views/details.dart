import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../commons/FrozenGlass.dart';
import '../../../commons/bottom_nav_bar.dart';
import '../../../res/assets.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  static const routePath = "/details";

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
            blurColor: Colors.black.withOpacity(0.1),
            blurX: 8,
            blurY: 8,
            child: Stack(
              children: [
                if (size.width < 920)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      // onlyRadius: true,
                      // borderRadius: 25,
                      // isBorder: false,
                      // topRightRadius: true,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageAsset.kiDetailsImg),
                              fit: BoxFit.cover)),
                      height:
                          (size.width > 920) ? size.height : size.height * 0.4,
                      width: (size.width < 520) ? size.width : size.width * 0.6,
                      // gradColorTopLeft: Colors.grey.withOpacity(0.4),
                      // gradColorTopRIght: Colors.grey.withOpacity(0.4),
                      // child: Align(
                      //   alignment: Alignment.topCenter,
                      //   child: SingleChildScrollView(
                      //     child: Column(
                      //       children: [
                      //         Container(
                      //           padding: const EdgeInsets.all(20),
                      //           width: (size.width > 520)
                      //               ? size.width * 0.6
                      //               : size.width,
                      //           child: const Text(
                      //             'Lattè',
                      //             style: TextStyle(
                      //               color: Color(0xFFCDCDCD),
                      //               fontSize: 18,
                      //               fontFamily: 'Inter',
                      //               fontWeight: FontWeight.w700,
                      //               letterSpacing: 0.20,
                      //             ),
                      //           ),
                      //         ),
                      //         Row(
                      //           mainAxisAlignment: MainAxisAlignment.start,
                      //           children: [
                      //             const Text("4.9"),
                      //             const Icon(
                      //               Icons.star_rounded,
                      //               color: Color.fromARGB(255, 255, 191, 0),
                      //             ),
                      //             const Text("\t(458)"),
                      //             const SizedBox(
                      //               width: 20,
                      //             ),
                      //             Container(
                      //               height: 17,
                      //               width: 17,
                      //               decoration: BoxDecoration(
                      //                   color: Colors.white,
                      //                   border: Border.all(
                      //                     color: Colors.green,
                      //                     width: 1,
                      //                   )),
                      //               child: const Icon(Icons.circle,
                      //                   color: Colors.green, size: 13),
                      //             ),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: FrozenGlassContainer(
                    onlyRadius: true,
                    borderRadius: 25,
                    isBorder: false,
                    topRightRadius: true,
                    height:
                        (size.width > 920) ? size.height : size.height * 0.6,
                    width: (size.width < 520) ? size.width : size.width * 0.6,
                    gradColorTopLeft: Colors.grey.withOpacity(0.4),
                    gradColorTopRIght: Colors.grey.withOpacity(0.4),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              width: (size.width > 520)
                                  ? size.width * 0.6
                                  : size.width,
                              child: const Text(
                                'Lattè',
                                style: TextStyle(
                                  color: Color(0xFFCDCDCD),
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text("4.9"),
                                const Icon(
                                  Icons.star_rounded,
                                  color: Color.fromARGB(255, 255, 191, 0),
                                ),
                                const Text("\t(458)"),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 1,
                                      )),
                                  child: const Icon(Icons.circle,
                                      color: Colors.green, size: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.9,
                              height: 35,
                              child: Text(
                                'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                style: TextStyle(
                                  color: Color(0xFFC0C0C0),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (size.width > 520)
                  Positioned(
                      child: Container(
                    // color: Colors.amber,
                    height: size.height,
                    width: size.width * 0.4,
                    child: Center(
                      child: (size.width > 915)
                          ? Container(
                              height: size.width * 0.4 * 1.1,
                              width: size.width * 0.4 * 0.9,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    ImageAsset.kiDetailsImg,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ))
                          : Text(
                              "Brew your Coffee\nwith Us",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  )),
                BottomNavBar(ctx: context),
                Positioned(
                  top: 10,
                  left: 10,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      height: 30,
                      width: 30,
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
