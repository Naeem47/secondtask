import 'package:flutter/material.dart';
import 'package:secondtask/constants/constants.dart';
import 'package:secondtask/constants/style.dart';

import '../constants/colorconstant.dart';


// ignore: must_be_immutable
class ChatContainer extends StatelessWidget {
  ChatContainer({
    super.key,
    required this.text,
    required this.color,
    required this.tcolor,
   
    required this.alignment, 

  });
  String text;
  final Color color;
  final Color tcolor;
  final MainAxisAlignment alignment;


  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          // color: Colors.green,
          child: Row(
            mainAxisAlignment: alignment,
            children: [
              
               
              Container(
                  
                  constraints: BoxConstraints(maxWidth: w * 2 / 3),
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  decoration: BoxDecoration(
                    boxShadow: [
              BoxShadow(
                color: Colorconstant.black.withOpacity(0.6),
                offset: const Offset(2, 3),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],
                    borderRadius:  BorderRadius.only(
                     
                      // bottomLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
                      // topRight: Radius.circular(valtr),
                      topLeft: Radius.circular(12),
                    ),
                    color: color
                  ),
                 child :  Text(
                    text,
                    style: dssans.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: tcolor),
                  ),)
            ],
          ),
        ),
      ),
    );
  }
}
