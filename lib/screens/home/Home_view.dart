import 'package:flutter/material.dart';
import '../../helper/Widget/Drawer.dart';
import '../../helper/Widget/HomeScreen.dart';
import '../../helper/Widget/custom_appbar.dart';
import '../../helper/Widget/slider_widget.dart';
import '../../helper/const.dart';
import 'needer/catogrey_child.dart';
import 'needer/allPatient_view.dart';
import 'needer/popular_view.dart';

class giverScreen extends StatefulWidget {
  @override
  _giverScreenState createState() => _giverScreenState();
}

class _giverScreenState extends State<giverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context, title: "متبرع "),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.1,
                  margin: EdgeInsets.symmetric(vertical: 10,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      ),
                  child: ImageSlider(['assets/999.png','assets/999.png','assets/999.png']),
                ),
              ),
              ItemScreens(),
              SizedBox(height: 10),
              ListTile(
                title: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => allPatientScreen()));
                  },
                  child: Text(
                    'إعرض الجميع ',
                    style: TextStyle(
                        color: kPrimaryColor,
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Text(
                  'الحالات',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopularViewScreen(),
              ),

              //  PopularDeals(),
            ],
          ),
        ),
      ),
    );
  }
}
