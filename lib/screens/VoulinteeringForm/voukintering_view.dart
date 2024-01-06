import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:soooopr/screens/VoulinteeringForm/voulinteering_controller.dart';

import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/Widget/custom_button.dart';
import '../../helper/Widget/custom_text_field.dart';
import '../../helper/const.dart';
import '../contactusScreen/contact_view.dart';
import '../profileScreen/profile_view.dart';
import 'components/voul_type.dart';


class VoulinteeringVIew extends StatefulWidget {


  @override
  _VoulinteeringVIewState createState() => _VoulinteeringVIewState();
}

class _VoulinteeringVIewState extends State<VoulinteeringVIew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "تبرع مؤسسات  "),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                    context.read<VoulinteeringController>().nameController,
                labeltext: "الاسم",
                obscureText: false,

              ),
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                    context.read<VoulinteeringController>().phoneController,
                labeltext: "رقم الجوال",
                keyboardType: TextInputType.phone,
              ),
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                    context.read<VoulinteeringController>().emailController,
                labeltext: "البريد الالكتروني",
                keyboardType: TextInputType.emailAddress,
              ),
              // Radio Buttons
              const VoulnteeringType(),
              //-----------
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                    context.read<VoulinteeringController>().messageController,
                labeltext: "الملاحظات",
                keyboardType: TextInputType.text,

                maxLines: 6,
              ),
              const SizedBox(height: 20),
              //Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() =>  ContactView());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .3,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                          Border.all(color: kPrimaryColor, width: 2),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      width: MediaQuery.of(context).size.width * .3,
                      title: "تأكيد",
                      onTap: () {
                        Get.to(() => const ProfileView());
                      },
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
