import 'package:flutter/material.dart';
import 'package:secondtask/constants/colorconstant.dart';

import '../constants/style.dart';

class Calendercard extends StatelessWidget {
  const Calendercard(
      {super.key,
      required this.day,
      required this.color,
      required this.datemonth,
      required this.yesterday,
      required this.mcolor});

  final String day;
  final String datemonth;
  final String yesterday;
  final Color color;
  final Color mcolor;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: height * 0.1,
        width: 65,
        decoration: BoxDecoration(
          color: mcolor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colorconstant.black.withOpacity(0.6),
              offset: const Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 65,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    )),
                child: Center(
                  child: Text(
                    day,
                    style: dssans.copyWith(
                      fontSize: 16,
                      color: color == Colorconstant.white? Colorconstant.black :Colorconstant.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colorconstant.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  )),
              width: 65,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      datemonth,
                      style: dssans.copyWith(
                        fontSize: 12,
                        color: Colorconstant.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      yesterday,
                      style: dssans.copyWith(
                        fontSize: 12,
                        color: Colorconstant.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
