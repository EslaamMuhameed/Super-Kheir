import 'package:flutter/cupertino.dart';

import '../../helper/Widget/Finsh_widget.dart';


class FinishView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: speedScreen(
        text: 'تمت العملية بنجاح',
      ),
    );
  }
}
