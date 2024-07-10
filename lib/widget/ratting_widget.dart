import 'package:flutter/material.dart';

class RattingWidget extends StatelessWidget {
  int? rating;
  RattingWidget({this.rating});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < this.rating! ? Icons.star : Icons.star_border,
              color: Colors.orange,
            );
          }),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '${this.rating!}/5 Reviews',
          style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.7)),
        )
      ],
    );
  }
}
