import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/Widget/custom_button.dart';
import '../../helper/const.dart';
import '../contactusScreen/contact_view.dart';
import '../profileScreen/profile_view.dart';

class RecyclingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context, title: "اعاده التدوير "),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/Mask group (7).png',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(40), //apply padding to all four sides
                child: Text(
                  'كتابه التفاصيل فرصه مشروع اعاده التدوير هنا ..',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'cairo',
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        CustomButton(
                          width: 300,


                          title: "برنامج اعادة التدوير",
                          onTap: () {
                            Get.to(() => const ProfileView());
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17,left: 22),
                          child: Icon(

                            Icons.recycling,
                            color: Colors.white,
                            size: 24.0,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() =>  ContactView());
                      },
                      child: Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                          Border.all(color: kPrimaryColor, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "تواصل معانا ",
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

            ],
          ),
        ),
      ),
    );
  }
}
