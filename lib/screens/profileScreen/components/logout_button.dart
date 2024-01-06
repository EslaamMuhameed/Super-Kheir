import 'package:flutter/material.dart';

import '../../../helper/const.dart';


class LogOutButton extends StatelessWidget {
  const LogOutButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.logout,
          size: 25,
          color: AppColors.mainAppColor,
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.mainAppColor,
              ),
            ),
          ),
          child: Text(
            "تسجيل الخروج",
            style: TextStyle(
              fontSize: 18,
              color: AppColors.mainAppColor,
              fontFamily: "FontBold",
            ),
          ),
        ),
      ],
    );
  }
}
