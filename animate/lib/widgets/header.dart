import 'package:animate/controllers/search_controller.dart';
import 'package:animate/controllers/search_controller.dart';
import 'package:animate/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedSearchBar(),
          const SizedBox(width: 15),
          const AvatarCircle(),
        ],
      ),
    );
  }
}

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/luggy.jpeg'),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange[600],
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);

  final SearchController _searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 700),
          width: _searchController.isSearch.value ? MediaQuery.of(context).size.width * .7 : 40,
          height: 40,
          decoration: BoxDecoration(
            border: null,
            color: Colors.white,
            boxShadow: [
              _searchController.isSearch.value
                  ? BoxShadow(
                      color: Colors.grey[400] as Color,
                      blurRadius: 3,
                      offset: const Offset(-4, 4),
                      spreadRadius: 0.4,
                    )
                  : const BoxShadow(color: Colors.white),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                right: 10,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 600),
                  opacity: _searchController.isSearch.value ? 1 : 0,
                  curve: Curves.easeOutQuint,
                  child: GestureDetector(
                    onTap: () {
                      if (_searchController.isSearch.value) {
                        _searchController.toggleIsSearch();
                      }
                    },
                    child: Icon(
                      Icons.close,
                      size: 22,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, bottom: 2),
                child: TextField(
                  onSubmitted: (String s) {},
                  cursorColor: Colors.grey[300],
                  decoration: const InputDecoration(
                    hintText: "Search charity",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                child: GestureDetector(
                  onTap: () {
                    if (!_searchController.isSearch.value) {
                      _searchController.toggleIsSearch();
                    }
                  },
                  child: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AnimatedSearchBar extends StatelessWidget {
  AnimatedSearchBar({Key? key}) : super(key: key);

  final SearchController _searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 700),
          width: _searchController.isSearch.value ? MediaQuery.of(context).size.width * 0.7 : 40,
          height: 40,
          curve: Curves.easeInOutCubicEmphasized,
          decoration: BoxDecoration(
            border: null,
            color: Colors.white,
            boxShadow: [
              _searchController.isSearch.value
                  ? BoxShadow(
                      color: Colors.grey[400] as Color,
                      blurRadius: 3,
                      offset: const Offset(-4, 4),
                      spreadRadius: 0.4,
                    )
                  : const BoxShadow(color: Colors.white),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                right: 10,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 600),
                  opacity: _searchController.isSearch.value ? 1 : 0,
                  curve: Curves.easeOutQuint,
                  child: GestureDetector(
                    onTap: () {
                      if (_searchController.isSearch.value) {
                        _searchController.toggleIsSearch();
                      }
                    },
                    child: Icon(
                      Icons.close,
                      size: 22,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, bottom: 2),
                child: TextField(
                  onSubmitted: (String s) {},
                  cursorColor: Colors.grey[300],
                  decoration: const InputDecoration(
                    hintText: "Search charity",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                child: GestureDetector(
                  onTap: () {
                    if (!_searchController.isSearch.value) {
                      _searchController.toggleIsSearch();
                    }
                  },
                  child: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
