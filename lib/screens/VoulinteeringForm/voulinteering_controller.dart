import 'package:flutter/material.dart';

class VoulinteeringController with ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController name1Controller = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController phone2Controller = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final TextEditingController messageController1 = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController pass1Controller = TextEditingController();
  final TextEditingController pass2Controller = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController Email1Controller = TextEditingController();
  final TextEditingController mobilController = TextEditingController();
  final TextEditingController adressController = TextEditingController();
  final TextEditingController jopController = TextEditingController();

  late Object voulTypeSeleced;
  updateVoulVal(Object newValue) {
    voulTypeSeleced = newValue;
    notifyListeners();
  }

  List<String> voulTypeList = [
    "تبرع مرة واحدة",
    "تبرع يومي",
    "تبرع اسبوعي",
    "تبرع شهري",
  ];
}


