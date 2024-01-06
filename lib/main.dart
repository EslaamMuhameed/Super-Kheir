import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:soooopr/screens/profileScreen/profile_controller.dart';
import 'package:soooopr/screens/splachScreen/Splach.dart';

import 'screens/VoulinteeringForm/voulinteering_controller.dart';
import 'screens/contactusScreen/contsact_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF0A1931), // navigation bar color
      statusBarColor: Color(0xFF0A1931), // status bar color
    ),
  );
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  Get.updateLocale(const Locale('ar'));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp(
      );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (context) => ContactController()),
        ChangeNotifierProvider(create: (context) => ProfileController()),
        ChangeNotifierProvider(create: (context) => VoulinteeringController()),
      ],
      child: GetMaterialApp(
        builder: (context, child) {
          return Directionality(
            textDirection: Get.locale == const Locale('ar')
                ? TextDirection.ltr
                : TextDirection.ltr,
            child: ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, child!),
              maxWidth: 1200,
              minWidth: 450,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(450, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ],
            ),
          );
        },
        debugShowCheckedModeBanner: false,
        locale: Get.locale,
        fallbackLocale: const Locale('ar'),
        title: 'Voulinteering',
        theme: ThemeData(
          fontFamily: "FontMedium",
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/',
        home:  SplachScreen(),
      ),
    );
  }
}
