import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/style/light_theme.dart';
import 'package:islamic_app/feature/home/view/screen/home_screen.dart';
import 'package:islamic_app/feature/quran/view/screen/sura_details_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Islamic',
          theme: AppThemeData.lightMode,
          themeMode: ThemeMode.light,
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName: (context) => HomeScreen(),
            SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
          },
        );
      },
    );
  }
}
