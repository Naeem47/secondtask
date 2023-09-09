import 'package:flutter/material.dart';
import 'package:secondtask/constants/colorconstant.dart';
import 'package:secondtask/constants/constants.dart';
import 'package:secondtask/constants/style.dart';
import 'package:secondtask/widgets/Textfield.dart';
import 'package:secondtask/widgets/chatcontainer.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconstant.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colorconstant.white),
          backgroundColor: Colorconstant.blue,
          automaticallyImplyLeading: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.menu,
              ),
            ),
          ],
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: Colorconstant.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colorconstant.black.withOpacity(0.6),
                      offset: const Offset(0, 3),
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),

                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.bubble_chart,
                        size: 40,
                        color: Colorconstant.white,
                      ),
                      Text(
                        "Hi There!",
                        style: dssans.copyWith(
                            fontSize: 22,
                            color: Colorconstant.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Welcome to online service.How can\n we help you today ?",
                        style: dssans.copyWith(
                            fontSize: 18,
                            color: Colorconstant.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colorconstant.white,
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) => messages[index]['uid'] == 2
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/profile.png")),
                              ChatContainer(
                                text: messages[index]['text'],
                                color: messages[index]['uid'] == 1
                                    ? Colorconstant.blue
                                    : Colorconstant.white,
                                tcolor: messages[index]['uid'] == 1
                                    ? Colorconstant.white
                                    : Colorconstant.black,
                                // tcolor:messages[index]['uid'] ==1 ? Colorconstant.white: Colorconstant.black ,

                                alignment: messages[index]['uid'] == 1
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                              ),
                            ],
                          ),
                        )
                      : ChatContainer(
                          text: messages[index]['text'],
                          color: messages[index]['uid'] == 1
                              ? Colorconstant.blue
                              : Colorconstant.white,
                          tcolor: messages[index]['uid'] == 1
                              ? Colorconstant.white
                              : Colorconstant.black,
                          // tcolor:messages[index]['uid'] ==1 ? Colorconstant.white: Colorconstant.black ,

                          alignment: messages[index]['uid'] == 1
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                        ),
                ),
              ),
            ),
            Container(
              height: height * 0.08,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFieldWidget(
                      controllerField: controller,
                    ),
                    Icon(
                      Icons.emoji_emotions,
                      color: Colorconstant.grey,
                    ),
                    Icon(
                      Icons.photo,
                      color: Colorconstant.grey,
                    ),
                    Icon(
                      Icons.attachment,
                      color: Colorconstant.grey,
                    ),
                    GestureDetector(
                       
                        child: Icon(
                          Icons.send,
                          color: Colorconstant.blue,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
