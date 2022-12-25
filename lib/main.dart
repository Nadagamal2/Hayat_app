import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hayat/core/utils/app_style.dart';
 import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hayat/screens/onBourdingScreen.dart';
import 'package:localization/localization.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarBrightness: Brightness.dark));

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          supportedLocales: [
            Locale('en'),
            Locale('ar'),
          ],
          localizationsDelegates: [
            // delegate from flutter_localization
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            // delegate from localization package.
            LocalJsonLocalization.delegate,
          ],
          title: 'Flutter Demo',
          theme: ThemeData(
            // primarySwatch: Colors.blue,
            fontFamily: "Cairo",
            scaffoldBackgroundColor: Styles.ScafoldColor,
          ),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const OnBoardingScreen(),
    );
  }
}
