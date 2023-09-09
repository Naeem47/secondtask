import 'package:flutter/material.dart';
import 'package:secondtask/constants/style.dart';

import '../constants/colorconstant.dart';

class Chipcontainer extends StatelessWidget {
  const Chipcontainer({super.key, required this.backcolor, required this.textcolor});
  final Color backcolor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        height: height * 0.040,
        width: 80,
        decoration: BoxDecoration(
          color:backcolor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colorconstant.white),
          boxShadow: [
            BoxShadow(
              color: Colorconstant.black.withOpacity(0.6),
              offset: const Offset(0, 3),
              blurRadius: 2,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            "7am-9pm",
            style: dssans.copyWith(
                fontSize: 11,
                color: textcolor,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
