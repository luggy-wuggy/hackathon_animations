import 'package:animate/controllers/category_controller.dart';
import 'package:animate/controllers/charity_scroll_controller.dart';
import 'package:animate/controllers/search_controller.dart';
import 'package:animate/widgets/category_list.dart';
import 'package:animate/widgets/charity_list.dart';
import 'package:animate/widgets/header.dart';
import 'package:animate/widgets/map_fab.dart';
import 'package:animate/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  CategoryController charityController = Get.put(CategoryController());
  // CharityScrollController charityScrollController = Get.put(CharityScrollController());
  // SearchController searchController = Get.put(SearchController());

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
            const AppTitle(),
            const CategoryList(),
            CharityList(),
          ],
        ),
      ),
    );
  }
}
