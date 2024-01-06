import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:soooopr/screens/home/needer/patientItem_view.dart';

import '../../../helper/controller.dart';



class PopularViewScreen extends StatelessWidget {
  final controller = Dashboard();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,


      child: Row(
        children: [

          Container(
            height: MediaQuery.of(context).size.height / 2.8,
            child: Row(
                children: List.generate(



                  controller.items2.length,
                      (context) => patientItemsScreen(
                    controller: controller,
                    index: context,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
