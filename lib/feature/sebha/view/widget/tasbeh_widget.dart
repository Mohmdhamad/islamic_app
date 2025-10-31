import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/style/colors.dart';
import '../../../../l10n/app_localizations.dart';
import '../../view_model/sebha_provider/sebha_provider.dart';

class TasbehWidget extends StatelessWidget {
  const TasbehWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SebhaProvider sebhaProvider = Provider.of<SebhaProvider>(context);
    return Expanded(
      child: Column(
        spacing: MediaQuery.of(context).size.height * 0.03,
        children: [
          Text(AppLocalizations.of(context)!.count),
          Container(
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              color: AppColors.primaryLightColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Text(
              '${sebhaProvider.count}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              sebhaProvider.tasbeh();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryLightColor,
            ),
            child: Text(
              sebhaProvider.azkar[sebhaProvider.index],
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
