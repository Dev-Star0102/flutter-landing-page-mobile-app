import 'package:building/model/sample_data_bar.dart';
import 'package:building/theme/color_theme.dart';
import 'package:flutter/material.dart';

import '../model/bar_item.dart';

class BottomBarWidget extends StatelessWidget {
  BottomBarWidget({Key? key}) : super(key: key);

  List<BottomBarItem> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          var barItem = barItems[index];
          return GestureDetector(
            onTap: () {
              setState:
              (() {
                barItems.forEach((element) {
                  element.isSelected = barItems == element;
                });
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  barItem.icon,
                  color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                ),
                Text(
                  barItem.label!,
                  style: TextStyle(
                      color:
                          (barItem.isSelected! ? mainThemeColor : Colors.grey),
                      fontSize: 11),
                )
              ],
            ),
          );
        }),
        // // children: List.generate(
        // //   barItems.length,
        // //   (index) {
        // //     child:
        // //     Column(
        // //       children: [],
        // //     );
        // //     var barItem = barItems[index];
        // //     Icon(
        // //       barItem.icon,
        // //       color: barItem.isSelected! ? mainThemeColor : Colors.grey,
        // //     );
        // //     Text(barItem.label!,
        // //         style: TextStyle(
        // //             color: (barItem.isSelected! ? mainThemeColor : Colors.grey),
        // //             fontSize: 11));
        // //   },
        // ),
      ),
    );
  }
}
