import 'package:flutter/material.dart';
import 'package:islamic_app/l10n/app_localizations.dart';

class AhadethHead extends StatelessWidget {
  const AhadethHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Text(
          AppLocalizations.of(context)!.hadethName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(),
      ],
    );
  }
}
