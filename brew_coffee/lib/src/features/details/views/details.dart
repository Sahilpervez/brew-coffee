import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../commons/FrozenGlass.dart';
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          children: [
                            SizedBox(
                              width: size.width,
                              child: Text(
                                'Lattè',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: (size.width < 520) ? 30 : 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
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
                              height: (size.width > 920)
                                  ? 50
                                  : (size.width > 520)
                                      ? 80
                                      : 35,
                              child: Text(
                                'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                style: TextStyle(
                                  color: const Color(0xFFC0C0C0),
                                  fontSize: (size.width > 520) ? 15 : 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.9,
                              height: 35,
                              child: const Text(
                                'Choice of Cup Filling : ',
                                style: TextStyle(
                                  color: Color(0xFFCDCDCD),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                              child: GridView(
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 100,
                                        childAspectRatio: 2),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: const Center(
                                        child: Text(
                                          "Full",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: const Center(
                                        child: Text(
                                          "1/2 Full",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: const Center(
                                        child: Text(
                                          "3/4 Full",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: const Center(
                                        child: Text(
                                          "1/4 Full",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ChoiceOfMilkHeader(size: size),
                            const SizedBox(
                              height: 15  ,
                            ),
                            ChooseMilk(size: size),
                            
                            const SizedBox(
                              height: 25  ,
                            ),
                            ChooseSugarHeader(size: size),
                            const SizedBox(
                              height: 15  ,
                            ),
                            ChooseSugar(size: size),
                            const SizedBox(
                              height:100  ,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (size.width > 520)
                  Positioned(
                      child: SizedBox(
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
                Align(
                  alignment: Alignment.bottomCenter,
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
                                  MediaQuery.of(context).size.width * 0.07,
                                  40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              HighPriority(),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green,
                                      gradient: const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color.fromARGB(255, 68, 133, 70),
                                            Colors.green,
                                          ])),
                                  child: const Text(
                                    'Submit',
                                    style: TextStyle(
                                      // color: Color(0xFFCDCDCD),
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HighPriority extends StatefulWidget {
  HighPriority({
    super.key,
  });

  @override
  State<HighPriority> createState() => _HighPriorityState();
}

class _HighPriorityState extends State<HighPriority> {
  bool highPriority = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: highPriority,
          onChanged: (val) {
            setState(() {
              highPriority = !highPriority;
            });
          },
          activeColor: Colors.transparent,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text("High Priority",
            style: TextStyle(
                color: Colors.grey,
                fontFamily: "Inter",
                fontSize: 18))
      ],
    );
  }
}

class ChooseSugar extends StatefulWidget {
  const ChooseSugar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ChooseSugar> createState() => _ChooseSugarState();
}

class _ChooseSugarState extends State<ChooseSugar> {
  
  bool sugarX1 = false;
  bool sugarX2 = false;
  bool halfSugar = false;
  bool noSugar = false;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 100,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: 100
                crossAxisCount: 2,
                childAspectRatio: (widget.size.width <435) 
                ? 4
                : (widget.size.width < 520)
                  ? 5
                  : (widget.size.width<720)
                  ?4
                  :(widget.size.width < 920)
                  ?5
                  :(widget.size.width<1025)?6
                  : 7),
        children: [
          Row(
            children: [
              Switch(
                value: sugarX1,
                onChanged: (val) {
                  setState(() {
                    
                  sugarX1 = !sugarX1;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Text(
                "Sugar X1",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: sugarX2,
                onChanged: (val) {
                  setState(() {
                    setState(() {
                      
                    sugarX2 = !sugarX2;
                    });
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Text(
                "Sugar X2",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: halfSugar,
                onChanged: (val) {
                  setState(() {
                    halfSugar = !halfSugar;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Text(
                "1/2 Sugar",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: noSugar,
                onChanged: (val) {
                  setState(() {
                    noSugar = !noSugar;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Text(
                "No Sugar",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChooseSugarHeader extends StatelessWidget {
  const ChooseSugarHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 25,
      child: const Text(
        ' Choice of Sugar :',
        style: TextStyle(
          color: Color(0xFFCDCDCD),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          letterSpacing: 0.20,
        ),
      ),
    );
  }
}

class ChooseMilk extends StatefulWidget {
  const ChooseMilk({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ChooseMilk> createState() => _ChooseMilkState();
}

bool skimMilk= false;
bool fullCreamMilk= false;
bool almondMilk= false;
bool fulllCreamMilk= false;
bool soyMilk= false;
bool oatMilk = false;
bool lactoseFreeMilk=false;

class _ChooseMilkState extends State<ChooseMilk> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 200,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: 100
                crossAxisCount: 2,
                childAspectRatio:(widget.size.width <435) 
                ? 4
                : (widget.size.width < 520)
                  ? 5
                  : (widget.size.width<720)
                  ?4
                  :(widget.size.width < 920)
                  ?5
                  :(widget.size.width<1025)?6
                  : 7
            ),
        children: [
          Row(
            children: [
              Switch(
                value: skimMilk,
                onChanged: (val) {
                  setState(() {
                    skimMilk = !skimMilk;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Flexible(
                child: Text(
                  "Skim Cream Milk",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: fullCreamMilk,
                onChanged: (val) {
                  setState(() {
                    fullCreamMilk = !fullCreamMilk;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Flexible(
                child: Text(
                  "Full Cream Milk",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: almondMilk,
                onChanged: (val) {
                  setState(() {
                    almondMilk = ! almondMilk;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Flexible(
                child: Text(
                  "Almond Milk",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: fulllCreamMilk,
                onChanged: (val) {
                  setState(() {
                    
                  fulllCreamMilk = !fulllCreamMilk;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Flexible(
                child: Text(
                  "Full Cream Milk",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: soyMilk,
                onChanged: (val) {
                  setState(() {
                    soyMilk = !soyMilk;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Flexible(
                child: Text(
                  "Soy Milk",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: oatMilk,
                onChanged: (val) {
                  setState(() {
                    oatMilk = !oatMilk;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Flexible(
                child: Text(
                  "Oat Milk",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Switch(
                value: lactoseFreeMilk,
                onChanged: (val) {
                  setState(() {
                    lactoseFreeMilk = !lactoseFreeMilk;
                  });
                },
                activeColor: Colors.green,
              ),
              const SizedBox(
                width: 11,
              ),
              const Flexible(
                child: Text(
                  "Lactose free Milk",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChoiceOfMilkHeader extends StatelessWidget {
  const ChoiceOfMilkHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 18,
      child: const Text(
        ' Choice of Milk :',
        style: TextStyle(
          color: Color(0xFFCDCDCD),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          letterSpacing: 0.20,
        ),
      ),
    );
  }
}
