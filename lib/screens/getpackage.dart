import 'package:flutter/material.dart';
import 'package:secondtask/constants/constants.dart';
import 'package:secondtask/constants/style.dart';
import 'package:secondtask/widgets/Button.dart';
import 'package:secondtask/widgets/Customappbar.dart';
import 'package:secondtask/widgets/calandercard.dart';
import 'package:secondtask/widgets/chipcont.dart';
import 'package:secondtask/widgets/pickupdropdown.dart';

import '../constants/colorconstant.dart';
import '../widgets/pickupdropdown2.dart';
import '../widgets/pickuptile.dart';

class GetPackage extends StatefulWidget {
  const GetPackage({super.key});

  @override
  State<GetPackage> createState() => _GetPackageState();
}

class _GetPackageState extends State<GetPackage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = -1;

     _selectContainer(int index) {
      setState(() {
        if (selectedIndex == index) {
          selectedIndex = -1;
        } else {
          selectedIndex = index;
        }
      });
      print(index);
    }

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              ontap: (){Navigator.pop(context);},
              title: "Pickup Date",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "When would you like your pickup?",
                          style: dssans.copyWith(
                            fontSize: 14,
                            color: Colorconstant.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: width / 7,
                        ),
                        Icon(
                          Icons.calendar_month,
                          color: Colorconstant.blue,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                        (index) => Calendercard(
                          color: colors[index],
                          mcolor: colors[index],
                          datemonth: dateday[index],
                          day: day[index],
                          yesterday: yesterday[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      "Available time slots",
                      style: dssans.copyWith(
                        fontSize: 14,
                        color: Colorconstant.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) {
                        final isSelected = selectedIndex == index;
                        final containerColor = isSelected
                            ? Colorconstant.blue
                            : Colorconstant.white;
                        return GestureDetector(
                          onTap: () => _selectContainer(index),
                          child: Chipcontainer(
                            backcolor: containerColor,
                            textcolor: isSelected
                                ? Colorconstant.white
                                : Colorconstant.black,
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: List.generate(
                        2,
                        (index) => GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Chipcontainer(
                              backcolor: Colorconstant.white,
                              textcolor: Colorconstant.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                     SizedBox(
                      height: height * 0.03,
                    ),
                   const  PickupTile(),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    
                   const PickupDropdown(),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    
                   const PickupDropdown2(),
                   CustomButton(
                    
                   ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
