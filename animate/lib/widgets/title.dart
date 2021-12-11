import 'package:animate/constants/style.dart';
import 'package:animate/controllers/charity_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.5,
        margin: const EdgeInsets.only(left: 25),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Charity Watch',
            style: kTitle,
          ),
        ),
      ),
    );
  }
}

// class AnimatedTitle extends StatelessWidget {
//   AnimatedTitle({Key? key}) : super(key: key);

//   final CharityScrollController _charityScrollController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () {
//         return Align(
//           alignment: Alignment.centerLeft,
//           child: AnimatedOpacity(
//             duration: const Duration(milliseconds: 200),
//             opacity: _charityScrollController.isTitleShowing.value ? 1 : 0,
//             child: AnimatedContainer(
//               duration: const Duration(milliseconds: 240),
//               height: _charityScrollController.isTitleShowing.value ? MediaQuery.of(context).size.height * 0.06 : 0,
//               width: _charityScrollController.isTitleShowing.value ? MediaQuery.of(context).size.width * 0.5 : 0,
//               margin: const EdgeInsets.only(left: 25),
//               child: FittedBox(
//                 fit: BoxFit.contain,
//                 child: Text(
//                   'Charity Watch',
//                   style: kTitle,
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
