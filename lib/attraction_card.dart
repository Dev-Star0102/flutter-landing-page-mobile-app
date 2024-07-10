import 'package:building/model/actraction_model.dart';
import 'package:building/theme/color_theme.dart';
import 'package:building/widget/ratting_widget.dart';
import 'package:flutter/material.dart';

class AttractionCard extends StatelessWidget {
  Attraction? attraction;
  AttractionCard({this.attraction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  offset: Offset.zero,
                  color: Colors.black.withOpacity(0.1))
            ]),
        height: 300,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(attraction!.imgPath!),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.all(20),
                  child: Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          attraction!.name!,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.pin_drop,
                              color: Colors.grey.withOpacity(0.7),
                              size: 12,
                            ),
                            Text(
                              attraction!.location!,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.withOpacity(0.7),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        RattingWidget(
                          rating: attraction!.rating!,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '\Rp${attraction!.price!.toStringAsFixed(2)}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Per Malam")
                      ],
                    )
                  ]),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 15,
                ),
                margin: EdgeInsets.only(right: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: mainThemeColor,
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: mainThemeColor.withOpacity(0.5),
                          offset: Offset.zero)
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
