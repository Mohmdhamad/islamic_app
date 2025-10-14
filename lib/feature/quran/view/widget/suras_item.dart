import 'package:flutter/material.dart';
import 'package:islamic_app/feature/quran/view/screen/sura_details_screen.dart';

class SurasItem extends StatelessWidget {
  const SurasItem({super.key, required this.name, required this.number});

  final String name;

  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          SuraDetailsScreen.routeName,
          arguments: SuraDetailsArgs(name: name, number: number),
        );
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}

class SuraDetailsArgs {
  final String name;
  final int number;

  SuraDetailsArgs({required this.name, required this.number});
}
