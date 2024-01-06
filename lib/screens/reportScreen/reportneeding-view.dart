import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/Widget/custom_button.dart';
import '../../helper/Widget/custom_text_field.dart';
import '../../helper/const.dart';
import '../../screens/VoulinteeringForm/voulinteering_controller.dart';
import 'FinshScreen.dart';

class ReportneedScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "احتياج شخصي "),
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
                context.read<VoulinteeringController>().name1Controller,
                labeltext: "اسم الحالة ان وجد",
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
                context.read<VoulinteeringController>().phone2Controller,
                labeltext: "رقم الحالة ان وجد ",
                keyboardType: TextInputType.phone,
              ),
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                context.read<VoulinteeringController>().emailController,
                labeltext: "عنوان الحالة   ",

              ),
              // Radio Buttons



              //-----------
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                context.read<VoulinteeringController>().messageController,
                labeltext: "شرح الحالة",
                keyboardType: TextInputType.text,

                maxLines: 6,
              ),

              const SizedBox(height: 20),
              Padding(padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 22.0),
                child: SizedBox(width: 300,height: 50,
                  child: TextButton.icon(onPressed: (){},  label:Text('ارفاق صوره',
                    textDirection: TextDirection.ltr,
                    style:TextStyle(fontSize: 20,
                      fontFamily: 'cairo',
                      color:kPrimaryColor,
                    ) ,


                  ),
                      icon:Icon(Icons.photo_camera,color: kPrimaryColor,
                        size: 24,

                      )),
                ),

              ),
              //Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      width: MediaQuery.of(context).size.width * .6,
                      title: "تأكيد",
                      onTap: () {
                        Get.to(() =>  FinishView2());
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

