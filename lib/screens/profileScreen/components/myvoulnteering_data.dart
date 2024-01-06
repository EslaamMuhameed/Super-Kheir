import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../helper/const.dart';
import '../profile_controller.dart';

class MyVoulenteeringData extends StatefulWidget {
  const MyVoulenteeringData();

  @override
  _MyVoulenteeringDataState createState() => _MyVoulenteeringDataState();
}

class _MyVoulenteeringDataState extends State<MyVoulenteeringData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "تبرعاتي",
                style: TextStyle(
                  fontSize: 17,
                  color: AppColors.mainAppColor,
                  fontFamily: "FontBold",
                ),
              ),
            ],
          ),
          Column(
            children:
                context.read<ProfileController>().muVoulnteering.map((item) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    item,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.thirdColor,
                      fontFamily: "FontBold",
                    ),
                  ),
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
