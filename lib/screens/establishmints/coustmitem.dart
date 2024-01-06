
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../screens/VoulinteeringForm/voukintering_view.dart';
import '../../helper/controller.dart';

class comstomItemScreens extends StatefulWidget {
  @override
  State<comstomItemScreens> createState() => _speedScreensState();
}

class _speedScreensState extends State<comstomItemScreens> {
  var controller=Controller();
  int currentDateSelectedIndex = 0;
  List screens = [
    VoulinteeringVIew(),
    VoulinteeringVIew(),
    VoulinteeringVIew(),
    VoulinteeringVIew(),


  ];

  @override
  Widget build(BuildContext context) {
    List categoriesIcon=[ "assets/other.png","assets/food.png","assets/med.png","assets/clothe.png", ];



    return Container(
      height: 150,

      child: ListView.builder(
        itemCount: 4,
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
                          Container(width: 60,margin: EdgeInsets.symmetric(horizontal: 10),child: Image.asset(categoriesIcon[index]))


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
