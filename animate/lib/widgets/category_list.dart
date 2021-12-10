import 'package:animate/constants/style.dart';
import 'package:animate/controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        padding: const EdgeInsets.only(right: 25),
        scrollDirection: Axis.horizontal,
        itemCount: Get.find<CategoryController>().categories.length,
        itemBuilder: (context, index) {
          return CategoryOption(index: index);
        },
      ),
    );
  }
}

class CategoryOption extends StatelessWidget {
  final int index;
  final CategoryController _categoryController = Get.find();

  CategoryOption({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return GestureDetector(
          onTap: () {
            _categoryController.selectCategory(index);
          },
          child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _categoryController.categories[index],
                  style: _categoryController.selectedCategoryIndex.value == index ? kCategorySelected : kCategoryUnselected,
                ),
                // AnimatedDefaultTextStyle(
                //   duration: const Duration(milliseconds: 320),
                //   style: _categoryController.selectedCategoryIndex.value == index ? kCategorySelected : kCategoryUnselected,
                //   child: Text(
                //     _categoryController.categories[index],
                //   ),
                // ),
                const SizedBox(height: 5),
                Container(
                  // duration: const Duration(milliseconds: 200),
                  // curve: Curves.easeInCirc,
                  height: 8, //_categoryController.selectedCategoryIndex.value == index ? 8 : 5,
                  width: 8, //_categoryController.selectedCategoryIndex.value == index ? 8 : 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _categoryController.selectedCategoryIndex.value == index ? Colors.deepOrange[300] : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
