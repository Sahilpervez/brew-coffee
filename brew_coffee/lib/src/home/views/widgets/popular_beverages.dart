
import 'package:brew_coffee/src/features/details/views/details.dart';
import 'package:flutter/material.dart';

import '../../../commons/FrozenGlass.dart';
import '../../../res/assets.dart';

class PopularBeverages extends StatelessWidget {
  const PopularBeverages({
    super.key,
    required ScrollController controller,
    required this.ctx,
  }) : _controller = controller;

  final ScrollController _controller;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: Scrollbar(
        controller: _controller,
        scrollbarOrientation: ScrollbarOrientation.bottom,
        interactive: true,
        trackVisibility: true,
        thickness: 15,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children:  [
              PopularBeveragesListItem(ctx:ctx,image: ImageAsset.kicoffee1Small),
              PopularBeveragesListItem(ctx:ctx,image: ImageAsset.kicoffee2Small),
              PopularBeveragesListItem(ctx:ctx,image: ImageAsset.kicoffee3Small),
              PopularBeveragesListItem(ctx:ctx,image: ImageAsset.kicoffee4Small),
              PopularBeveragesListItem(ctx:ctx,image: ImageAsset.kicoffee5Small),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularBeveragesListItem extends StatelessWidget {
  const PopularBeveragesListItem({
    super.key,
    required this.image,
    required this.ctx
  });
  final image;
  final BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    return Align(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: InkWell(
              onTap: (){
                Navigator.of(ctx).pushNamed(DetailsPage.routePath);
              },
              child: FrozenGlassContainer(
                    width: 213,
                    height: 265,
                    borderRadius: 8,
                    blurColor: Colors.white.withOpacity(0.17),
                    child: Align(
                      child: Column(children: [
              Image.asset(
                image,
                height: 170,
                width: 170,
              ),
              const SizedBox(
                width: 144,
                height: 32,
                child: Text(
                  'Hot Cappuccino',
                  style: TextStyle(
                    color: Color(0xFFCDCDCD),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 17,
                    child: Container(),
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        width: 120,
                        child: Text(
                          'Espresso, Steamed Milk',
                          style: TextStyle(
                            color: Color(0xFF2F2F2F),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Row(
                          children: [
                            Text("4.9"),
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromARGB(255, 255, 191, 0),
                            ),
                            Text("\t(495)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    color: const Color(0xFF66A25C),
                    height: 25,
                    width: 25,
                    child: const Center(child: Icon(Icons.add)),
                  ),
                  Expanded(
                    flex: 11,
                    child: Container(),
                  ),
                ],
              )
                      ]),
                    ),
              ),
            ),
          ));
  }
}
