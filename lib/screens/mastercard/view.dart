import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../screens/vounterSreen/Finsh_screen.dart';

import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/Widget/custom_button.dart';
import 'component/textfield_item.dart';

class MastercardScreen extends StatefulWidget {



  @override
  State<MastercardScreen> createState() => _MastercardScreenState();
}

class _MastercardScreenState extends State<MastercardScreen> {
  var checkBoxValue = false;
  Color color = Colors.blue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context, title: "تبرع ماستر كارد "),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:  [

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextFieldItem1(
                  label: "اسم حامل البطاقه",
                  maxWidth: 400.0, text: '',

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFieldItem1(

                  label: "رقم بطاقه الدفع",
                  maxWidth: 400.0,
                  suffix: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(

                      width: 5,
                      height: 5,
                      decoration: const BoxDecoration(

                          image: DecorationImage(

                              image: AssetImage("assets/images/mastercard.png")
                          )
                      ),
                    ),
                  ), text: '',
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFieldItem1(
                        label: "الرمز السري",
                        maxWidth: 180.0, text: '',

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFieldItem1(
                        label: "تاريخ الانتهاء",
                        maxWidth: 180.0, text: '',

                      ),
                    ),


                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Checkbox(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          value: (checkBoxValue),
                          onChanged: (val) {
                            checkBoxValue = !checkBoxValue;
                            setState(() {});
                          },
                          activeColor: Colors.blue,

                        ),
                        TextButton(onPressed: (){
                          checkBoxValue = !checkBoxValue;
                          setState(() {

                          });
                        },
                            child:  Text("احفظ معلومات الدفع",
                              style: TextStyle(
                                  color: checkBoxValue?Colors.blue:Colors.black
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height/35,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: CustomButton(
                  onTap: () {
                    Get.to(() =>  FinishView4());
                  },
                  width: 350,
                  title: 'تبرع الان',
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
