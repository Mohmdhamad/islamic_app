import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import 'package:islamic_app/feature/hadeth/view/widget/hadeth_content.dart';
import 'package:islamic_app/feature/settings/view_model/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../model/hadeth_model.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details_screen';

  const HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreen();
}

class _HadethDetailsScreen extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var hadeth = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset(
          provider.appTheme == ThemeMode.light
              ? AppImages.lightBackground
              : AppImages.darkBackground,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              hadeth.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: HadethContent(ahadeth: hadeth.content),
        ),
      ],
    );
  }
}
