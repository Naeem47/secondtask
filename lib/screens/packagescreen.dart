import 'package:flutter/material.dart';
import 'package:secondtask/constants/constants.dart';
import 'package:secondtask/screens/getpackage.dart';
import 'package:secondtask/widgets/packagetile.dart';

import '../widgets/Customappbar.dart';

class PackageView extends StatelessWidget {
  const PackageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               CustomAppBar(
                ontap: (){},
                title: "Package",
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: List.generate(5, (index) =>  GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const GetPackage() ,)),
                      child: PackageTile(
                        title: package[index],
                        img: images[index],
                      ),
                    )),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
