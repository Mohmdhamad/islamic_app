import 'package:flutter/material.dart';
import 'package:islamic_app/feature/hadeth/model/hadeth_model.dart';
import 'package:islamic_app/feature/hadeth/view/screen/hadeth_details_screen.dart';

class HadethItem extends StatelessWidget {
  HadethItem({super.key, required this.hadeth});

  HadethModel hadeth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          HadethDetailsScreen.routeName,
          arguments: hadeth,
        );
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
