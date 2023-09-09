import 'package:flutter/material.dart';
import 'package:secondtask/constants/style.dart';

import '../constants/colorconstant.dart';

class PickupTile extends StatefulWidget {
  const PickupTile({super.key, });

  @override
  State<PickupTile> createState() => _PickupTileState();
}
bool _switchValue = false;
class _PickupTileState extends State<PickupTile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.050,
      width: width,
      decoration: BoxDecoration(
        color:Colorconstant.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colorconstant.white),
        boxShadow: [
          BoxShadow(
            color: Colorconstant.black.withOpacity(0.6),
            offset: const Offset(0, 3),
            blurRadius: 5,
            spreadRadius:0 ,
          ),
        ],
      ),
      child: Padding(
        
        padding: const EdgeInsets.symmetric(  horizontal:15.0,vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Repeat Pickup",
              style: dssans.copyWith(
                  fontSize: 15,
                  color: Colorconstant.black,
                  fontWeight: FontWeight.w600),
            ),
            Switch(
        value: _switchValue,
        onChanged: (value) {
          setState(() {
            _switchValue = value;
          });
        },
      ),
          ],
        ),
      ),
    );
  }
}
