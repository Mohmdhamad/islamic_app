import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/style/themes.dart';
import 'package:islamic_app/feature/hadeth/view/screen/hadeth_details_screen.dart';
import 'package:islamic_app/feature/home/view/screen/home_screen.dart';
import 'package:islamic_app/feature/quran/presentation/screen/sura_details_screen.dart';
import 'package:islamic_app/feature/settings/view_model/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfigProvider  provider = Provider.of<AppConfigProvider>(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Islamic',
          theme: AppThemeData.lightMode,
          darkTheme: AppThemeData.darkMode,
          themeMode: provider.appTheme,
          initialRoute: HomeScreen.routeName,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale(provider.appLang),
          routes: {
            HomeScreen.routeName: (context) => HomeScreen(),
            SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
            HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
          },
        );
      },
    );
  }
}
