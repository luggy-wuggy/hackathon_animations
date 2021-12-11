import 'package:animate/constants/dummy_charities.dart';
import 'package:animate/controllers/charity_scroll_controller.dart';
import 'package:animate/widgets/charity_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CharityList extends StatelessWidget {
  CharityList({Key? key}) : super(key: key);

  final CharityScrollController _charityScrollController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ShaderMask(
        shaderCallback: (Rect rect) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.purple, Colors.transparent],
            stops: [0.0, 0.0, 0.1],
          ).createShader(rect);
        },
        blendMode: BlendMode.dstOut,
        child: ListView.builder(
          controller: _charityScrollController.controller,
          padding: const EdgeInsets.only(top: 20),
          itemCount: dummyCharities.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var charity = dummyCharities[index];
            return CharityCard(charity: charity);
          },
        ),
      ),
    );
  }
}
