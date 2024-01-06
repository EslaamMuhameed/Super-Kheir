import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../helper/Widget/HomeScreen.dart';
import '../../helper/Widget/custom_button.dart';
import '../../helper/Widget/custom_text_field.dart';
import '../../screens/VoulinteeringForm/voulinteering_controller.dart';


class SinUpScreen extends StatelessWidget {
  // final controller = RecipeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: 150,
                    color: Colors.white,
                    child: Image.asset('assets/333.png')),
                Center(
                  child: Container(

                    child:
                    Text(


                      'إنشـــاء حســاب',
                      style:

                      TextStyle(color: Colors.black, fontWeight: FontWeight.w300,fontSize: 35),
                      textAlign: TextAlign.justify,
                    ),

                  ),
                ),
                CustomTextField(
                  width: MediaQuery.of(context).size.width * .85,
                  controller:
                  context.read<VoulinteeringController>().name1Controller,
                  labeltext: "الاسم",




                ),
                CustomTextField(
                  width: MediaQuery.of(context).size.width * .85,
                  controller:
                  context.read<VoulinteeringController>().Email1Controller,
                  labeltext: "البريد الإكتروني",

                    keyboardType: TextInputType.emailAddress


                ),

                CustomTextField(
                  width: MediaQuery.of(context).size.width * .85,
                  controller:
                  context.read<VoulinteeringController>().pass1Controller,
                  labeltext: "الرقم السري",
                  obscureText: true,


                ),
                CustomTextField(
                  width: MediaQuery.of(context).size.width * .85,
                  controller:
                  context.read<VoulinteeringController>().pass2Controller,
                  labeltext: "تأكيد الرقم السري",
                  obscureText: true,


                ),
                CustomTextField(
                  width: MediaQuery.of(context).size.width * .85,
                  controller:
                  context.read<VoulinteeringController>().mobilController,
                  labeltext: "رقم الموبيل",

                    keyboardType: TextInputType.phone


                ),
                CustomTextField(
                  width: MediaQuery.of(context).size.width * .85,
                  controller:
                  context.read<VoulinteeringController>().adressController,
                  labeltext: "العنوان ",


                ),
                SizedBox(height: 30,),
                CustomButton(
                  title: 'إنشاء حساب ',
                  width: 300,
                  onTap: () {
                    Get.to(() =>  HomeScreen());
                  },
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
