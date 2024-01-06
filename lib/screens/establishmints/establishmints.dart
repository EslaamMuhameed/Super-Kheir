import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../screens/contactusScreen/contact_view.dart';
import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/const.dart';
import 'coustmitem.dart';

class Establishmints extends StatefulWidget {
  @override
  _EstablishmintsState createState() => _EstablishmintsState();
}

class _EstablishmintsState extends State<Establishmints> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xfff3f3f3),
        appBar: customAppBar(context: context, title: " مؤسسات  "),
        endDrawer: Drawer(
          child: MainDrawer(),
        ),
        body: Container(
            height: height,
            width: width,
            color: Color(0xfff1f1f1),
            child: ListView(children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: width * .03, vertical: 20),
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                //height: height,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/العدسه.jpg')),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "شرح تبرع مؤسسة لسوبر خير ..شرح تبرع مؤسسة لسوبر خير ..شرح تبرع مؤسسة لسوبر خير  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black45),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          comstomItemScreens(),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Get.to(() =>  ContactView());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * .6,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: kPrimaryColor, width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "تواصل معنا",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: kPrimaryColor,
                                      fontFamily: "FontBold",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
