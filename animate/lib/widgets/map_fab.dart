import 'package:animate/page/map.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapFAB extends StatelessWidget {
  const MapFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      color: const Color(0xFF57b894),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () => Get.to(const MapPage()),
        child: const SizedBox(
          height: 56,
          width: 56,
          child: Center(
            child: Icon(
              Icons.map_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedMapFAB extends StatelessWidget {
  const AnimatedMapFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(seconds: 1),
      tappable: false,
      openBuilder: (context, closedContainer) => const MapPage(),
      closedShape: const CircleBorder(),
      closedColor: const Color(0xFF57b894),
      closedElevation: 6,
      closedBuilder: (context, openContainer) {
        return InkWell(
          customBorder: const CircleBorder(),
          onTap: () => openContainer(),
          child: const SizedBox(
            height: 56,
            width: 56,
            child: Center(
              child: Icon(
                Icons.map_rounded,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
