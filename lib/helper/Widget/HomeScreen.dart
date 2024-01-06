import 'dart:math';

import 'package:flutter/material.dart';

import '../controller.dart';
import 'Drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfdc1c1c1),


        body: tabs.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,

            elevation: 0,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Color(0xff228689),
            iconSize: 30,
            items: [


              BottomNavigationBarItem(

                  icon: Image.asset('assets/338.png',height: 60,width: 60, color: _currentIndex==0?Color(0xff228689):Colors.black,),
                  backgroundColor: Colors.white,
                  label: ''),
              BottomNavigationBarItem(

                  icon: Image.asset('assets/339.png',height: 60,width: 60,color: _currentIndex==1?Color(0xff228689):Colors.black),


                  backgroundColor: Colors.white,
                  label: ''),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Image.asset('assets/337.png',height: 60,width: 60, color: _currentIndex==2?Color(0xff228689):Colors.black),
                  label: ''),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Image.asset('assets/336.png',height: 60,width: 60, color: _currentIndex==3?Color(0xff228689):Colors.black),
                  label: ''),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon:  Image.asset('assets/330.png',height: 40,width: 40,color: _currentIndex==4?Color(0xff228689):Colors.black),
                label: '',
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }));
  }
}
