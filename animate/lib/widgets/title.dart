import 'package:animate/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTitle extends StatelessWidget {
  AppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: 1,
          child: AnimatedContainer(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.5,
            margin: const EdgeInsets.only(left: 25),
            duration: const Duration(milliseconds: 240),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Charity Watch',
                style: kTitle,
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
