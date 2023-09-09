import 'package:flutter/material.dart';
import 'package:secondtask/constants/colorconstant.dart';
import 'package:secondtask/screens/chat%20screen.dart';

import '../constants/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Chatscreen(),));
        },
        child: Container(
          height: height * 0.050,
          width: width,
          decoration: BoxDecoration(
            color: Colorconstant.blue,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colorconstant.black.withOpacity(0.6),
                offset: const Offset(0, 3),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Text( "Continue", style: dssans.copyWith(
                    fontSize: 15,
                    color: Colorconstant.white,
                    fontWeight: FontWeight.w600),),
          ),
        ),
      ),
    );
  }
}
