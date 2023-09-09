import 'package:flutter/material.dart';
import 'package:secondtask/constants/style.dart';

import '../constants/colorconstant.dart';
import '../constants/constants.dart';

class PackageTile extends StatelessWidget {
  const PackageTile({super.key, required this.title,required this.img,});
  final String title;
  final String img;
  @override
  Widget build(BuildContext context) {
  final  List data = ["Wash","Drycleaning","Iron"];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.16,
        width: width,
        decoration: BoxDecoration(
          
          color: Colorconstant.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colorconstant.black.withOpacity(0.6),
              offset: const Offset(0, 4),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: height * 0.16,
              width: 150,
              decoration: BoxDecoration(
                color: Colorconstant.blue,
                borderRadius: BorderRadius.circular(12),
                //  border: Border.all(
                //   color: Colorconstant.white
                //  ),
                
                boxShadow: [
                  BoxShadow(
                    color: Colorconstant.black.withOpacity(0.6),
                    offset: const Offset(0, 3),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
               
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(img,fit: BoxFit.fill,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: dssans.copyWith(
                        fontSize: 14,
                        color: Colorconstant.blue,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "you will get \$10 off buying this package",
                    style: dssans.copyWith(
                        fontSize: 11,
                        color: Colorconstant.blue,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Row(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding:  EdgeInsets.only(right : 10.0),
                        child: Container(
                          height: height * 0.055,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colorconstant.white,
                            borderRadius: BorderRadius.circular(8),
                             border: Border.all(
                              color: Colorconstant.white
                             ),
                            boxShadow: [
                              BoxShadow(
                                color: Colorconstant.black.withOpacity(0.6),
                                offset: const Offset(0, 3),
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],
                            image: DecorationImage(image: AssetImage(imagesconst[index]))
                          ),
                          
                        ),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: height * 0.005,
                  ),
                  Row(
                    children: List.generate(3, (index) => Padding(padding: EdgeInsets.symmetric(horizontal : 10),child:  Text(
                   data[index],
                    style: dssans.copyWith(
                        fontSize: 11,
                        color: Colorconstant.blue,
                        fontWeight: FontWeight.w600),
                  ),),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
