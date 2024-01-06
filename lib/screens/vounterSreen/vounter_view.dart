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
import '../VoulinteeringForm/voulinteering_controller.dart';
import 'Finsh_screen.dart';



class VounterVIew extends StatefulWidget {
  const VounterVIew();

  @override
  _VounterVIewState createState() => _VounterVIewState();
}

class _VounterVIewState extends State<VounterVIew> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "تبرع أفراد "),
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
          Container(
            height: 60,
              width: MediaQuery.of(context).size.width * .85,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[50],
            ),
            child: PopupMenuButton(
              color: Colors.white,
              tooltip: 'تبرع مستمر',
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_downward,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Text(

                    'تبرع مستمر',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: kPrimaryColor),
                  )
                ],
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  child: ListTile(
                    title: Text(
                      'تبرع مستمر',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    title: Text(''),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    title: Text(''),
                  ),
                ),
              ],
            ),),

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
                    child: CustomButton(
                      width: MediaQuery.of(context).size.width * .8,
                      title: "تأكيد",
                      onTap: () {
                        Get.to(() =>  FinishView4());
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
