import 'package:flutter/material.dart';


PreferredSize customAppBar(
    { required BuildContext context,  required String title}) {
  return PreferredSize(
    child: AppBar(
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
            padding: const EdgeInsets.only(right: 20, top: 6),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
              textAlign: TextAlign.end,
            ),
          ),
        ]),
    preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * .06),
  );
}
