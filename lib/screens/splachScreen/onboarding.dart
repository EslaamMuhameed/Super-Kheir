import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../helper/Widget/custom_button.dart';
import '../../helper/const.dart';
import '../Signup/loginPage.dart';

import 'controller.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = OnboardingController();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xfff3f3f3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false);
              },
              child: Text(
                controller.currentPage == 0 ? '' : 'Skip',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                  controller: pageController,
                  onPageChanged: (int i) {
                    controller.currentPage = i;
                    setState(() {});
                  },
                  children: List.generate(
                    controller.items.length,
                        (ctx) => Container(
                          height: 100,
                      child: Image.asset(
                        controller.items[controller.currentPage].img,
                      ),
                    ),
                  )),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            controller.items.length,
                                (index) => Container(
                              height: 8,
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: index == controller.currentPage
                                      ?  kPrimaryColor
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                              width:
                              index == controller.currentPage ? 40 : 8,
                            )),
                      ),

                      Column(
                        children: [
                          Text(
                            controller.items[controller.currentPage].title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            controller
                                .items[controller.currentPage].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                        ],
                      ),

                      CustomButton(
                        width: 150,
                        title: controller.currentPage == 0
                            ? 'بدأ'
                            : 'التالي ',
                        onTap: () {
                          if (controller.currentPage <
                              controller.items.length) {
                            controller.currentPage == 3
                                ? Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                                    (route) => false)
                                : controller.currentPage++;
                            pageController.animateToPage(controller.currentPage,
                                duration: Duration(seconds: 1),
                                curve: Curves.ease);
                          }
                          setState(() {});
                        },
                      ),

                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
