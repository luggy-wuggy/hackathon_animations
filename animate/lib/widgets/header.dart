import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          const Spacer(),
          SearchBar(),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              ///SIGN OUT
              //Get.find<AuthController>().signOut();
            },
            child: SizedBox(
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
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);

  //final CharitySearchController _charitySearchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      width: 40, //_charitySearchController.isSearch.value ? MediaQuery.of(context).size.width * 0.6 : 40,
      height: 40,
      curve: Curves.easeInOutCubicEmphasized,
      decoration: const BoxDecoration(
        border: null,
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 10,
            child: GestureDetector(
              onTap: () {},
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
  }
}
