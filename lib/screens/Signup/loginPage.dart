import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:soooopr/screens/Signup/signup.dart';


import '../../helper/Widget/HomeScreen.dart';
import '../../helper/Widget/custom_button.dart';
import '../../helper/Widget/custom_text_field.dart';
import '../../helper/const.dart';
import '../../screens/VoulinteeringForm/voulinteering_controller.dart';




class LoginScreen extends StatelessWidget {
 // final controller=Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SafeArea(


          child: Column(
            children: [
              Container(
                  width: 150,
                  color: Colors.white,
                  child: Image.asset('assets/333.png')),
              Center(
                child: Container(
                  child: Text(
                    'تسجيل الدخول  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 35),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextField(
                        width: MediaQuery.of(context).size.width * .85,
                        controller:
                        context.read<VoulinteeringController>().EmailController,

                        labeltext: "البريد الإكتروني",

                          keyboardType: TextInputType.emailAddress,


                      ),
                      CustomTextField(
                        width: MediaQuery.of(context).size.width * .85,
                        controller:
                        context.read<VoulinteeringController>().passController,

                        labeltext: " الرقم السري",
                        obscureText: true,


                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'نسيت كلمة السر ',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: CustomButton(
                          title: 'تسجيل الدخول ',
                          width: 300,
                          onTap: () {
                            Get.to(() =>  HomeScreen());
                          },
                        ),
                      ),


                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 90),
                          child: Row(
                            children: [

                              InkWell(

                                  onTap:  () { Get.to(() =>  SinUpScreen());
                                  },
                                  child: Text(
                                    'إنشاء حساب جديد ',
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'ليس لديك حساب ؟ ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          'أو إستمر عبر ',
                          style: TextStyle(
                            fontSize: 18

                          ),
                        ),
                      ),
                       const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('assets/131.png')),
                              onPressed: (){

                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(


                                width: 50,
                                height: 50,
                                child: Image.asset('assets/132.png')),
                          )
                        ],

                      ),

                    ],
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
