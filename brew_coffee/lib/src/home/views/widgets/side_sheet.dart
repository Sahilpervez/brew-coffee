
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../res/assets.dart';

class SideSheet extends StatelessWidget {
  const SideSheet({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      child: SizedBox(
        height: size.height,
        width: size.width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    ImageAsset.kiHandWaving,
                    scale: 0.5,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat("dd/mm/yyyy").format(DateTime.now()),
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                    const Text("John Doe",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                SvgPicture.asset(
                  ImageAsset.kicartIcon,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Image.asset(ImageAsset.kiProfilePic),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
