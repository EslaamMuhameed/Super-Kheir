import 'package:flutter/cupertino.dart';

import '../../helper/Widget/Finsh_widget.dart';


class FinishView1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: speedScreen(
        text: 'تم أرسال طلبك بنجاح وسيتم مراجعة \n حالة  الطلب',
      ),
    );
  }
}
