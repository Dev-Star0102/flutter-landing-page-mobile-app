import 'package:building/attraction_card.dart';
import 'package:building/model/actraction_model.dart';
import 'package:building/model/sample_data.dart';
import 'package:building/theme/color_theme.dart';
import 'package:building/widget/bottom_bar_widget.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainThemeColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Icon(
          Icons.pool,
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(
            50,
          ),
        ),
        child: Container(
          color: Colors.white,
          child: Column(children: [
            Expanded(
              child: ListView.builder(
                itemCount: attractionsList.length,
                itemBuilder: (context, index) {
                  Attraction attr = attractionsList[index];

                  return Container(
                    padding: EdgeInsets.all(20),
                    child: AttractionCard(
                      attraction: attr,
                    ),
                  );
                },
              ),
            ),
            BottomBarWidget(),
          ]),
        ),
      ),
    );
  }
}
