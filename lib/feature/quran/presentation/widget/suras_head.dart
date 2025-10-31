import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/l10n/app_localizations.dart';

class SurasHead extends StatelessWidget {
  const SurasHead({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              AppLocalizations.of(context)!.ayat,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Container(
            color: Theme.of(context).dividerColor,
            height: double.infinity,
            width: 3.w,
            padding: EdgeInsetsGeometry.zero,
          ),
          Expanded(
            child: Text(
              AppLocalizations.of(context)!.suraName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
