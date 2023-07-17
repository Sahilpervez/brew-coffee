
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../commons/FrozenGlass.dart';
import '../../../res/assets.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: FrozenGlassContainer(
        isBorder: (size.width > 520) ? false : true,
        onlyRadius: true,
        borderRadius: (size.width > 520) ? 25 : 0,
        height: (size.width > 520) ? 100 : max(160, size.height * 0.24),
        width: (size.width > 520) ? size.width * 0.6 : size.width,
        blurColor: Colors.white.withOpacity(0.09),
        gradColorTopLeft: Colors.black.withOpacity(0.15),
        gradColorTopRIght: Colors.black.withOpacity(0.15),
        child: Align(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: (size.width > 520)
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              if (size.width < 520) const ProfileRow(),
              SearchBar(size: size),
            ],
          ),
        )),
      ),
    );
  }
}


class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(ImageAsset.kiHandWaving),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat("dd/mm/yyyy").format(DateTime.now()),
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Text("John Doe",
                    style: TextStyle(
                      color: Colors.grey.shade300,
                    )),
              ],
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageAsset.kicartIcon,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Image.asset(ImageAsset.kiProfilePic),
            )
          ],
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 390,
          height: 55,
          decoration: ShapeDecoration(
            color: const Color(0xFFF8F8F8),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                ),
                child: SvgPicture.asset(ImageAsset.klSearch),
              ),
              Flexible(
                fit: (size.width > 520) ? FlexFit.tight : FlexFit.loose,
                child: Text(
                  "Search Favourite Beverages",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(ImageAsset.klFilter),
            ],
          ),
        ),
      ),
    );
  }
}
