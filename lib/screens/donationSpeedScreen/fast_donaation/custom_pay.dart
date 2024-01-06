import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../screens/contactusScreen/contact_view.dart';
import '../../../../screens/representativeScreen/representative_view.dart';

import '../../../helper/Widget/component/textfield_item.dart';
import '../../../helper/Widget/custom_button.dart';
import '../../../helper/const.dart';
import '../../mastercard/view.dart';
import '../../vounterSreen/Finsh_screen.dart';

class paycustom extends StatefulWidget {
  @override
  State<paycustom> createState() => _paycustomState();
}

class _paycustomState extends State<paycustom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: InkWell(
                onTap: () {
                  Get.to(() => MastercardScreen());
                },

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/mastar_cash.png",
                            width: 110,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //ماستر كارد

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.grey,
                      context: context,
                      builder: (Buildcontext) {
                        return Container(
                          width: double.infinity,
                          height: 300,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close)),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        "فودافون كاش",
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.grey[100],
                                width: double.infinity,
                                height: 1,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const Text(
                                "ارسل المبلغ المراد التبرع به علي الرقم",
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "01017055361",
                                style:
                                    TextStyle(fontSize: 18, color: kPrimaryColor),
                              )
                            ],
                          ),
                        );
                      });

                  setState(() {});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/vodavone.png",
                            width: 108,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ) //فودافون كاش
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/images/etesalat.png",
                            width: 94.3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ), //اتصالات كتش
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/orange.png",
                            width: 103,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ), //اورانج كاش
          ],
        ),
        InkWell(
          onTap: () {
            Get.to(() => ContactView());
          },
          child: TextFieldItem(
            text: "فروع الجمعيه",

            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(() => representativeScreen());
          },
          child: TextFieldItem(
            text: "طلب المندوب",
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25.0))),
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close)),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: const Text(
                                        "سوبر كوين",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.grey[100],
                                width: double.infinity,
                                height: 1,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                textAlign: TextAlign.end,
                                decoration: InputDecoration(
                                  hintText: 'المبلغ الذي تريد التبرع بيه',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: kPrimaryColor,
                                  ),
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width / 1.2,
                                    maxHeight:
                                        MediaQuery.of(context).size.height / 14,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Align(
                                alignment: AlignmentDirectional.bottomEnd,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: Text(
                                    "رصيد حسابك : 2500 س",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 222),
                                child: CustomButton(
                                  title: 'تبرع الان',
                                  width: 100,
                                  onTap: () {
                                    Get.to(() => FinishView4());
                                  },

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                });
          },

          child:

          TextFieldItem(
            text: "سوبر كوين",
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
