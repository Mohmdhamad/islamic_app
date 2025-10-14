import 'package:flutter/material.dart';
import 'package:islamic_app/core/style/app_images.dart';
import 'package:islamic_app/core/style/colors.dart';
import 'package:islamic_app/feature/quran/view/widget/suras_head.dart';
import 'package:islamic_app/feature/quran/view/widget/suras_list.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset(AppImages.quranLogo)),
        Divider(color: AppColors.primaryLightColor, thickness: 3),
        SurasHead(),
        Divider(color: AppColors.primaryLightColor, thickness: 3),
        SurasList(),
      ],
    );
  }
}
