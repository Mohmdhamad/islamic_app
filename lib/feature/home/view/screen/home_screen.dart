import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import 'package:islamic_app/feature/hadeth/view/screen/hadeth_tab.dart';
import 'package:islamic_app/feature/home/view/widget/home_appbar.dart';
import 'package:islamic_app/feature/quran/presentation/screen/quran_tab.dart';
import 'package:islamic_app/feature/radio/view/screen/radio_tab.dart';
import 'package:islamic_app/feature/sebha/view/screen/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
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
              onTap: (index) {
                setState(() {

                });
                selectedIndex = index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.quranIcon)),
                  label: 'quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.hadethIcon)),
                  label: 'hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.sebhaIcon)),
                  label: 'sebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.radioIcon)),
                  label: 'radio',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
