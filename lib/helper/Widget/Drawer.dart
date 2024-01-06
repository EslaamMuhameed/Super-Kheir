import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screens/PortfolioScreen/Portfolio_view.dart';
import '../../screens/RecycleScreen/recycle_view.dart';
import '../../screens/Signup/loginPage.dart';
import '../../screens/Signup/welcomePage.dart';
import '../../screens/VoulinteeringForm/voukintering_view.dart';
import '../../screens/contactusScreen/contact_view.dart';
import '../../screens/establishmints/establishmints.dart';
import '../../screens/home/Home_view.dart';
import '../../screens/profileScreen/profile_view.dart';

import 'HomeScreen.dart';


class MainDrawer extends StatelessWidget {
   MainDrawer();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(


                      child: Image.asset('assets/333.png',width: 150,height: 150,)),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "إسلام محمد الدسوقي",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),

              ],
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        //Now let's Add the button for the Menu
        //and let's cop
       Column(
         mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           InkWell(
             onTap: () {
               Get.to(() => giverScreen());
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text('الرئيسية '),
                   SizedBox(width: 10,),
                   Icon(Icons.home,
                   color: Colors.black,
                 ),

                 ]
               ),
             ),
           ),
           InkWell(
             onTap: () {
               Get.to(() =>  ProfileView());
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text('الملف الشخصي '),
                     SizedBox(width: 10,),
                     Icon(Icons.person,
                       color: Colors.black,
                     ),

                   ]
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text('متابعة الحالة '),
                   SizedBox(width: 10,),
                   Icon(Icons.receipt,
                     color: Colors.black,
                   ),

                 ]
             ),
           ),
           InkWell(
             onTap: () {
               Get.to(() =>  PortfolioView());
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text('محفظتي  '),
                     SizedBox(width: 10,),
                     Icon(Icons.monetization_on,
                       color: Colors.black,
                     ),

                   ]
               ),
             ),
           ),
           InkWell(
             onTap: () {
               Get.to(() =>  Establishmints());
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text('المؤسسات '),
                     SizedBox(width: 10,),
                     Icon(Icons.account_balance_rounded,
                       color: Colors.black,
                     ),

                   ]
               ),
             ),
           ),
           InkWell(
             onTap: () {
               Get.to(() =>  RecyclingView());
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text('إعادة التدوير '),
                     SizedBox(width: 10,),
                     Icon(Icons.refresh,
                       color: Colors.black,
                     ),

                   ]
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text('من نحن'),
                   SizedBox(width: 10,),
                   Icon(Icons.warning_amber_sharp,
                     color: Colors.black,
                   ),

                 ]
             ),
           ),
           InkWell(
             onTap: () {
               Get.to(() =>  ContactView());
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text('إتصل بنا /العناوين '),
                     SizedBox(width: 10,),
                     Icon(Icons.phone,
                       color: Colors.black,
                     ),

                   ]
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text('شكاوي ومقترحات '),
                   SizedBox(width: 10,),
                   Icon(Icons.report_sharp,
                     color: Colors.black,
                   ),

                 ]
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text('سياسات الخصوصية  '),
                   SizedBox(width: 10,),
                   Icon(Icons.sticky_note_2_outlined,
                     color: Colors.black,
                   ),

                 ]
             ),
           ),
           InkWell(
             onTap: () {
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => LoginScreen()));
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text('تسجيل الخروج  ',style:TextStyle(
                       decoration: TextDecoration.underline,
                     ), ),
                     SizedBox(width: 10,),
                     Icon(Icons.exit_to_app,
                       color: Colors.black,
                     ),

                   ]
               ),
             ),
           ),



           ListTile(
             onTap: () {},

             title: Text("     نسخة الأبلكيش   2.1"),
           ),
         ],
       )

      ]),
    );
  }
}