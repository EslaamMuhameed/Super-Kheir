import 'package:flutter/material.dart';
import '../../../helper/Widget/Drawer.dart';
import '../../../helper/Widget/custom_appbar.dart';
import '../../../helper/controller.dart';
import 'item_view.dart';


class allPatientScreen extends StatelessWidget {
  final controller = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "جميع الحالات  "),
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



                  controller.items2.length,
                      (context) => allItems(
                    controller: controller,
                    index: context,
                  ),
                )),),
        ),
      ),
    );
  }
}
