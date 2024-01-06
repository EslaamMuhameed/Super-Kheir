import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../helper/Widget/Drawer.dart';
import '../../../helper/Widget/custom_appbar.dart';
import 'custom_pay.dart';

class payScreen extends StatefulWidget {


  @override
  State<payScreen> createState() => _payScreenState();
}

class _payScreenState extends State<payScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: "طرق الدفع  "),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),

    body:  SafeArea(
      child: Center(child: paycustom()),
    ),
    );
  }
}
