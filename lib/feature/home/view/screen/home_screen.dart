import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import 'package:islamic_app/feature/hadeth/view/screen/hadeth_tab.dart';
import 'package:islamic_app/feature/home/view/widget/home_appbar.dart';
import 'package:islamic_app/feature/quran/presentation/screen/quran_tab.dart';
import 'package:islamic_app/feature/radio/view/screen/radio_tab.dart';
import 'package:islamic_app/feature/sebha/view/screen/sebha_tab.dart';
import 'package:islamic_app/feature/settings/view/screen/settings_tab.dart';
import 'package:islamic_app/feature/settings/view_model/provider/app_config_provider.dart';
import 'package:islamic_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    AppConfigProvider provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.appTheme == ThemeMode.light
              ? AppImages.lightBackground
              : AppImages.darkBackground,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: homeAppbar(context),
          body: tabs[selectedIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(
              context,
            ).copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                setState(() {});
                selectedIndex = index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage(AppImages.quranIcon)),
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage(AppImages.hadethIcon)),
                  label: AppLocalizations.of(context)!.hadeth,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage(AppImages.sebhaIcon)),
                  label: AppLocalizations.of(context)!.sebha,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage(AppImages.radioIcon)),
                  label: AppLocalizations.of(context)!.radio,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
