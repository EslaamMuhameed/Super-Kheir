import 'package:flutter/cupertino.dart';
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
import 'FinshScreen.dart';



class VoulnteerView extends StatefulWidget {


  @override
  _VoulnteerViewState createState() => _VoulnteerViewState();
}
bool _checkbox = false;

class _VoulnteerViewState extends State<VoulnteerView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "مندوب "),
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
                labeltext: "رقم الموبيل ",
                keyboardType: TextInputType.phone,
              ),
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                context.read<VoulinteeringController>().emailController,
                labeltext: "العنوان ",

              ),
              // Radio Buttons
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Row(

                  children: [

                    Text(
                      'نفس بيانات الحساب',
                      style: TextStyle(color: Colors.cyan[700]),
                    ),
                    Checkbox(
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      focusColor: kPrimaryColor,
                      value: _checkbox,
                      activeColor: kPrimaryColor,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      },
                    ),
                  ],
                ),
              ),


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
                        Get.to(() =>  FinishView());
                      },
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
