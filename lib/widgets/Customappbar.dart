import 'package:flutter/material.dart';
import 'package:secondtask/constants/colorconstant.dart';
import 'package:secondtask/constants/style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.title,required this.ontap});
final String title ;
final Function()?ontap;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.07,
      width: width,
      decoration: BoxDecoration(
        color: Colorconstant.white,
        border: Border.all(
          color: Colorconstant.blue,
        ),
        boxShadow: [
          BoxShadow(
            color: Colorconstant.blue,
            offset: const Offset(2, 3),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: ontap,
              icon: Icon(
                Icons.arrow_back,
                color: Colorconstant.blue,
              ),
            
            ),
            Text(title,style: dssans.copyWith(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: Colorconstant.blue
            ),),
             Icon(Icons.menu,  color: Colorconstant.blue,)
          ],
        ),
      ),
    );
  }
}
