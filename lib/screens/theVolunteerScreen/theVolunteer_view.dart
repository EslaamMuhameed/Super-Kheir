import 'package:flutter/material.dart';
import 'package:soooopr/screens/theVolunteerScreen/vounter.dart';

import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/controller.dart';




class theVolunteerScreen extends StatelessWidget {
  final controller = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          backgroundColor: Color(0xfff3f3f3),
          appBar: customAppBar(context: context,title: "فرص التطوع  "),
          endDrawer: Drawer(
            child: MainDrawer(),
          ),


          body: Center(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:  Column(
                children: List.generate(



                  controller.items3.length,
                      (context) => vounterScreen(
                    controller: controller,
                    index: context,
                  ),
                )),),
        ),
      ),
    );
  }
}
