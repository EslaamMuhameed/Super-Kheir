import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/Widget/custom_button.dart';
import '../../helper/Widget/custom_text_field.dart';
import '../VoulinteeringForm/voulinteering_controller.dart';
import 'FinshScreen.dart';

class VoulnteerScreen extends StatefulWidget {

  @override
  _VoulnteerScreenState createState() => _VoulnteerScreenState();
}


class _VoulnteerScreenState extends State<VoulnteerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "متطوع "),
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
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                context.read<VoulinteeringController>().jopController,
                labeltext: "المهنه  ",

              ),




              //-----------
              CustomTextField(
                width: MediaQuery.of(context).size.width * .85,
                controller:
                context.read<VoulinteeringController>().messageController1,
                labeltext: " خبرات  / ملاحظات",


                maxLines: 6,
              ),
              const SizedBox(height: 20),
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
                        Get.to(() =>  FinishView1());
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
