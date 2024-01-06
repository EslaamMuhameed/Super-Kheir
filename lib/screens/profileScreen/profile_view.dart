import 'package:flutter/material.dart';
import '../../helper/Widget/Drawer.dart';
import 'components/field_data.dart';
import 'components/logout_button.dart';
import 'components/myvoulnteering_data.dart';
import 'components/profile_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView();

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
                'الملف الشخصي ',
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
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(height: 20),
              ProfileCard(),
              SizedBox(height: 20),
              FieldData(title: "الايميل", value: "eslam@test.com",),
              FieldData(title: "الرقم", value: "01157484119"),
              FieldData(title: "العنوان", value: " المنصورة"),
              MyVoulenteeringData(),
              SizedBox(height: 20),
              LogOutButton(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
