

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../helper/controller.dart';
import '../../donationSpeedScreen/fast_donaation/view.dart';
import '../../vounterSreen/vounter_view.dart';



class ItemScreens extends StatefulWidget {
  @override
  State<ItemScreens> createState() => _speedScreensState();
}

class _speedScreensState extends State<ItemScreens> {
  var controller=Controller();
  int currentDateSelectedIndex = 0;
  List screens = [
    VounterVIew(),
    VounterVIew(),
    VounterVIew(),
    VounterVIew(),
    FastDonationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    List categoriesIcon=[ "assets/other.png","assets/food.png","assets/med.png","assets/clothe.png", "assets/speed.png"];



    return Container(
      height: 100,

      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => screens[index]));


              setState(() {
                currentDateSelectedIndex = index;
              });
            },
            child: Container(
              child: Column(
                children: [
                Expanded(
                  flex: 5,
                  child: Container(

                    padding: const EdgeInsets.only(right: 5, left: 5),

                    child: Column(

                      children: [
                        Container(width: 60,margin: EdgeInsets.symmetric(horizontal: 5),child: Image.asset(categoriesIcon[index]))


                      ],
                    ),
                  ),
                ),

              ],),
            ),
          );
        },
      ),
    );
  }
}

