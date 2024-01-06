import 'package:flutter/material.dart';


import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/custom_appbar.dart';
import 'fast_donaation/pay-view.dart';




class DonationMethodScreen extends StatefulWidget {


  @override
  State<DonationMethodScreen> createState() => _DonationMethodScreenState();
}

class _DonationMethodScreenState extends State<DonationMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff3f3f3),
        appBar: customAppBar(context: context, title: "طرق الدفع "),
        endDrawer: Drawer(
          child: MainDrawer(),
        ),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: payScreen()
            ),
          ),
        ),

    );
  }
}
