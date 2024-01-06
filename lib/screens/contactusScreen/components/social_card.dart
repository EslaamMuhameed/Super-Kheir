import 'package:flutter/material.dart';

class SocialCard extends StatefulWidget {
  final String icon;
   SocialCard({  required this.icon});

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        widget.icon,
        width: 90,
        height: 90,
      ),
    );
  }
}
