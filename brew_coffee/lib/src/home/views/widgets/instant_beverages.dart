
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../commons/FrozenGlass.dart';
import '../../../features/details/views/details.dart';
import '../../../res/assets.dart';

class InstantBeverages extends StatelessWidget {
  const InstantBeverages({
    super.key,
    required this.size,
    required this.ctx
  });

  final Size size;
  final BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    return FrozenGlassContainer(
      isBorder: true,
      borderRadius: 0,
      width: (size.width > 520)
          ? size.width * 0.6
          : size.width,
      blurColor: Colors.white.withOpacity(0.09),
      gradColorTopLeft: Colors.black.withOpacity(0.15),
      gradColorTopRIght: Colors.black.withOpacity(0.15),
      child: Align(
          child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const Text(
              'Get it instantly',
              style: TextStyle(
                color: Color(0xFFB5B5B5),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.20,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 700,
              child: GridView(
                physics:
                    const NeverScrollableScrollPhysics(),
                gridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 500,
                        childAspectRatio: 7 / 3),
                children: [
                  InstantBeveragesItem(
                    ctx:ctx,
                    size: size,
                    image: ImageAsset.kiDetailsImg,
                  ),
                  InstantBeveragesItem(
                    ctx:ctx,
                    size: size,
                    image: ImageAsset.kicoffee5Small,
                  ),
                  InstantBeveragesItem(
                    ctx:ctx,
                    size: size,
                    image: ImageAsset.kiDetailsImg,
                  ),
                  InstantBeveragesItem(
                    ctx:ctx,size: size,
                    image: ImageAsset.kicoffee5Small,
                  ),
                  InstantBeveragesItem(
                    ctx:ctx,size: size,
                    image: ImageAsset.kiDetailsImg,
                  ),
                  InstantBeveragesItem(
                    ctx:ctx,size: size,
                    image: ImageAsset.kicoffee5Small,
                  ),
                ],
              ),
            ) 
          ],
        ),
      )),
    );
  }
}

class InstantBeveragesItem extends StatelessWidget {
  const InstantBeveragesItem({
    super.key,
    required this.image,
    required this.ctx,
    required this.size,
  });
  final BuildContext ctx;
  final image;
  final Size  size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: LayoutBuilder(builder: (context, constraints) {
        return InkWell(
          onTap: (){
            Navigator.of(ctx).pushNamed(DetailsPage.routePath);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: ShapeDecoration(
              color: const Color(0x54B3B3B3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            padding: const EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.54,
                        height: constraints.maxHeight * 0.2,
                        child: Text(
                          'Lattè',
                          style: TextStyle(
                            color: Color(0xFFCDCDCD),
                            fontSize: (size.width<520)?11.sp:15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.2,
                        child: Row(
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
                                  color:  Colors.green, size: 13),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.4,
                        child: Text(
                          'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xFFC0C0C0),
                            fontSize: (size.width<520)?9.sp:12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: constraints.maxHeight * 0.8,
                  width: constraints.maxHeight * 0.8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
