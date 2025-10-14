import 'package:flutter/material.dart';
import 'package:islamic_app/feature/quran/view/widget/suras_item.dart';

import '../../data/suras_names.dart';

class SurasList extends StatelessWidget {
  const SurasList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Text(
                  '286',
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(
                child: SurasItem(
                  name: SurasNames.ArSuras[index],
                  number: index + 1,
                ),
              ),
            ],
          );
        },
        itemCount: SurasNames.ArSuras.length,
      ),
    );
  }
}
