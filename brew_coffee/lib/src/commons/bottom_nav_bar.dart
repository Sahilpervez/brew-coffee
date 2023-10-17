import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home/views/home.dart';
import '../res/assets.dart';
import 'FrozenGlass.dart';

final selectedScreenProvider = StateProvider<int>((ref) => 0);

class BottomNavBar extends ConsumerWidget {
  BottomNavBar({
    super.key,
    required this.ctx,
  });

  final BuildContext ctx;

  final List<Map<String, String>> navBarList = [
    {
      "icon": ImageAsset.kiNavBarIcon1,
      "routePath": HomeView.routePath,
    },
    {
      "icon": ImageAsset.kiNavBarIcon2,
      "routePath": HomeView.routePath,
    },
    {
      "icon": ImageAsset.kiNavBarIcon3,
      "routePath": HomeView.routePath,
    },
    {
      "icon": ImageAsset.kiNavBarIcon4,
      "routePath": HomeView.routePath,
    },
    {
      "icon": ImageAsset.kiNavBarIcon5,
      "routePath": HomeView.routePath,
    }
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: FrozenGlassContainer(
          height: 70,
          borderRadius: 20,
          width: min(MediaQuery.of(ctx).size.width * 0.9, 374),
          gradColorTopLeft: Colors.black.withOpacity(0.45),
          gradColorTopRIght: Colors.black.withOpacity(0.45),
          child: Align(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: min(MediaQuery.of(ctx).size.width * 0.07, 40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...navBarList.map(
                    (e) {
                      int idx = navBarList.indexOf(e);
                      return InkWell(
                        onTap: () {
                          ref
                              .read(selectedScreenProvider.notifier)
                              .update((state) => idx);
                          // Navigator.of(ctx).pushNamed(e['routePath']!);
                        },
                        child: Container(
                          padding: (MediaQuery.of(ctx).size.height < 310)
                              ? null
                              : const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (idx == ref.watch(selectedScreenProvider))
                                ? Colors.black.withOpacity(0.35)
                                : null,
                            border: (idx == ref.read(selectedScreenProvider))
                                ? Border.all(
                                    color: Colors.grey.shade700, width: 1.5)
                                : null,
                          ),
                          child: SvgPicture.asset(
                            e['icon']!,
                            height: (MediaQuery.of(ctx).size.height < 310)
                                ? 10
                                : 20,
                            width: (MediaQuery.of(ctx).size.height < 310)
                                ? 10
                                : 20,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
