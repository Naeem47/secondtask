import 'package:flutter/material.dart';
import 'package:secondtask/constants/constants.dart';
import 'package:secondtask/constants/style.dart';

import '../constants/colorconstant.dart';

class PickupDropdown extends StatefulWidget {
  const PickupDropdown({
    super.key,
  });

  @override
  State<PickupDropdown> createState() => _PickupDropdownState();
}

String _selectedvalue = 'Evereday';

class _PickupDropdownState extends State<PickupDropdown> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
                    "How often in a week",
                    style: dssans.copyWith(
                        fontSize: 15,
                        color: Colorconstant.black,
                        fontWeight: FontWeight.w600),
                  ),
                   SizedBox(
                    height: height*0.01,
                  ),

        Container(
          height: height * 0.050,
          width: width,
          decoration: BoxDecoration(
            color: Colorconstant.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colorconstant.white),
            boxShadow: [
              BoxShadow(
                color: Colorconstant.black.withOpacity(0.6),
                offset: const Offset(0, 3),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _selectedvalue,
                  style: dssans.copyWith(
                      fontSize: 15,
                      color: Colorconstant.black,
                      fontWeight: FontWeight.w600),
                ),
                DropdownButton(
                    // value: _selectedvalue,
                   underline: Container(
              height: 0,
            ),

                    items: const [
                       DropdownMenuItem(

                        value: 'Evereday',

                        child: Text(
                          "Evereday",
                        ),
                      ),
                       DropdownMenuItem(
                        value: 'Monthly',
                        child: Text(
                          "Monthly",
                        ),
                      ),
                       DropdownMenuItem(
                        value: 'Once in a week',
                        child: Text(
                          "Once in a week",
                        ),
                      ),
                    ],
                    onChanged: (newvalue) {
                      setState(() {
                        _selectedvalue = newvalue!;
                      });
                    })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
