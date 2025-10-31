import 'package:flutter/material.dart';
import 'package:islamic_app/l10n/app_localizations.dart';

AppBar homeAppbar(context) {
  return AppBar(
    centerTitle: true,
    title: Text(AppLocalizations.of(context)!.appTitle, style: Theme.of(context).textTheme.titleLarge),
    elevation: 0.0,
  );
}
