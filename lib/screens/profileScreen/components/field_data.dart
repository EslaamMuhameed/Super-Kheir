import 'package:flutter/material.dart';

import '../../../helper/const.dart';




class FieldData extends StatefulWidget {
  final String title, value;
  const FieldData({  required this.title,  required this.value})
     ;

  @override
  _FieldDataState createState() => _FieldDataState();
}

class _FieldDataState extends State<FieldData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.edit,
                  size: 20,
                  color: kPrimaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.mainAppColor,
                    fontFamily: "FontBold",
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.value,
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.thirdColor,
                  fontFamily: "FontBold",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
