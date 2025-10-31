import 'package:flutter/material.dart';
import 'package:islamic_app/feature/quran/presentation/widget/suras_item.dart';

import '../../data/suras_names.dart';

class SurasList extends StatelessWidget {
  const SurasList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Theme.of(context).dividerColor,
          thickness: 2,
        ),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SurasItem(
            name: SurasNames.ArSuras[index],
            number: index + 1,
          );
        },
        itemCount: SurasNames.ArSuras.length,
      ),
    );
  }
}
