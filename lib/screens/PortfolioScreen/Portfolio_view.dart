import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/Widget/custom_button.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "المحفظة "),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),


      body: SafeArea(
        child: Column(children: [

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 130,

                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[Color(0xff00838f), Colors.cyan],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Container(
                  height: 45,
                  width: 130,
                  margin: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'تبرع سريع',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan[700]),
                  ),
                ),
              ),
              Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 180,top: 30),
                    child: Container(

                      child: Column(
                        children: [
                          Text(
                            'رصيدك الحالي',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Row(
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: Colors.white),
                                  child: Text(
                                    'س',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.cyan,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Text(
                                  ' 2500 ',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

              child: Image.asset('assets/55.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(

                'بمجرد مشاهدة الاعلان سيتم اضافة عدد****س\n'
                    'الى محفظتك حتى تتمكن من التبرع لمزيد من\n'
                    'الحالات',
                style: TextStyle(color: Colors.black45, fontSize: 20,),
                textAlign: TextAlign.center
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child:

            CustomButton(width: 400,
              title: 'مشاهدة الاعلان', onTap: () {  } ,

            ),
          ),
        ]),
      ),
    );
  }
}
