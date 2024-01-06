import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:soooopr/screens/reportScreen/reportneeding-view.dart';

import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import 'needy.dart';

class ReportScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "محتاج للتبرع"),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() =>  NeedyVIew());
                  },

                  child: Container(
                    width: 162.77,
                    height: 104.08,
                    decoration: BoxDecoration(
                        color: Color(0xffE5F2F3),
                        border: Border.all(
                          color: Color(0xff259EA4),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 60.0,
                        width: 60.0,
                        child: Image.asset(
                          'assets/needy.png',
                        ),
                      ),
                      Container(
                        child: Text(
                          'احتياج شخصي',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]),
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 22.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() =>  ReportneedScreen());
                  },

                  child: Container(
                    width: 162.77,
                    height: 104.08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 60.0,
                        width: 60.0,
                        child: Image.asset(
                          'assets/report.png',
                        ),
                      ),
                      Container(
                        child: Text(
                          'تبليغ عن محتاج',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
