import 'package:flutter/material.dart';
import 'package:islamic_app/core/style/app_images.dart';
import 'package:islamic_app/feature/home/view/widget/home_appbar.dart';
import 'package:islamic_app/feature/quran/view/widget/suras_item.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura_details_screen';

  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    return Stack(
      children: [
        Image.asset(
          AppImages.lightBackground,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: homeAppbar(context),
          body: Column(
            children: [
              Card(
                elevation: 7,
                child: Column(
                  children: [
                    Text(
                      args.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Divider(thickness: 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
