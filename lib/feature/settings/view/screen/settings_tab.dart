import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/feature/settings/view/widget/change_theme_widget.dart';
import 'package:islamic_app/feature/settings/view/widget/select_lang_widget.dart';
import 'package:islamic_app/l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.lang,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SelectLangWidget(),
          Text('Mode', style: Theme.of(context).textTheme.titleMedium),
          ChangeThemeWidget(),
        ],
      ),
    );
  }
}
