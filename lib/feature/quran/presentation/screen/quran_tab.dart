import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import '../widget/suras_head.dart';
import '../widget/suras_list.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset(AppImages.quranLogo)),
          const Divider(),
          const SurasHead(),
          const Divider(),
          const SurasList(),
        ],
      ),
    );
  }
}
