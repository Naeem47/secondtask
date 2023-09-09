import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secondtask/constants/colorconstant.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    required this.controllerField,
  });

  TextEditingController controllerField;
  

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.06,
      width: width/1.6,
      decoration: BoxDecoration(
          color: Colorconstant.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
              BoxShadow(
                color: Colorconstant.black.withOpacity(0.6),
                offset: const Offset(2, 3),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          
          validator: (val) {
            if (val!.isEmpty) {
              return "null";
            } else {
              return null;
            }
          },
          controller: controllerField,
          
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            
            hintText: "Send a messege",
            
              contentPadding: const EdgeInsets.only(bottom: 10),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: InputBorder.none,
              ),
        ),
      ),
    );
  }
}
