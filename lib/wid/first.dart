import 'package:bmi/constans/app_constans.dart';
import 'package:flutter/material.dart';


class First extends StatelessWidget {


  final double barw;
  const First({required Key key, required this.barw}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20)
            )
                ,color: secondcolor
          ),
        )
      ],
    );

  }
}
