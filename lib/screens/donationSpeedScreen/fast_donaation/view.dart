import 'package:flutter/material.dart';

import '../../../helper/Widget/Drawer.dart';
import '../../../helper/Widget/custom_appbar.dart';
import 'custom_pay.dart';

class FastDonationScreen extends StatefulWidget {


  @override
  State<FastDonationScreen> createState() => _FastDonationScreenState();
}

class _FastDonationScreenState extends State<FastDonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context, title: "تبرع سريع"),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/images/visa.png"),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: const Center(child: Text("تبرع سريع للحالات الاكثر احتياجا",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                ),
              ),
              paycustom()

            ],


          ),
        ),
      ),
    );
  }
}
