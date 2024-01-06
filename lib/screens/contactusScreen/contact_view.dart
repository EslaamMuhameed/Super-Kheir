import 'package:flutter/material.dart';


import '../../helper/Widget/Drawer.dart';
import '../../helper/const.dart';
import 'components/social_card.dart';

class ContactView extends StatefulWidget {
   ContactView();

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          elevation: .5,
          leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Icon(
                    Icons.menu,
                    size: 30,

                    color: Colors.black,
                  ));
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 32, top: 6),
              child: Text(
                'اتصل بنا ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                textAlign: TextAlign.end,
              ),
            ),
          ]),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  width: 250,
                  color: Colors.white,
                  child: Image.asset('assets/333.png')),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SocialCard(icon: "assets/icons/fb.png"),
                SizedBox(width: 30),
                SocialCard(icon: "assets/icons/instgram.png"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SocialCard(icon: "assets/icons/whatsapp.png"),
                SizedBox(width: 30),
                SocialCard(icon: "assets/icons/twiter.png"),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 13, ),
                  child: Icon(
                    Icons.phone,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "01157484119",
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                const SizedBox(width: 5),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.email,
                    size: 25,
                    color:kPrimaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "osama@test.com",
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),


              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.location_on,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "4355 street..............",
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
