import 'package:building/list_page.dart';
import 'package:building/theme/color_theme.dart';
import 'package:flutter/material.dart';

class LandingSearchbar extends StatelessWidget {
  const LandingSearchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      padding: const EdgeInsets.only(
        left: 20,
        right: 5,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "search hotel",
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ListPage(),
              ),
            );
          },
          child: Container(
            width: 30,
            height: 30,
            // ignore: sort_child_properties_last
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 15,
            ),
            decoration: BoxDecoration(
              color: mainThemeColor,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        )
      ]),
    );
  }
}
