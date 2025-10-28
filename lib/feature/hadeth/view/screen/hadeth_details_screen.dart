import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import 'package:islamic_app/feature/hadeth/view/widget/hadeth_content.dart';

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
    var hadeth = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset(
          AppImages.lightBackground,
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
