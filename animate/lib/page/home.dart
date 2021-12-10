import 'package:animate/controllers/category_controller.dart';
import 'package:animate/widgets/category_list.dart';
import 'package:animate/widgets/charity_list.dart';
import 'package:animate/widgets/header.dart';
import 'package:animate/widgets/map_fab.dart';
import 'package:animate/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  CategoryController charityController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const MapFAB(),
      body: Container(
        padding: const EdgeInsets.only(top: 60),
        color: Colors.white,
        child: Column(
          children: [
            const HeaderWidget(),
            AppTitle(),
            const CategoryList(),
            CharityList(),
          ],
        ),
      ),
    );
  }
}
