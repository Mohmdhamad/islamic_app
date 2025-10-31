import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_sura_details.dart';

class SuraContent extends StatelessWidget {
  SuraContent({super.key, required this.verses});
  List<String> verses;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      margin: EdgeInsetsDirectional.symmetric(
        horizontal: MediaQuery.of(context).size.width * .05,
        vertical: MediaQuery.of(context).size.height * .1,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadiusDirectional.circular(20.r),
      ),
      child: ListView.builder(
        itemCount: verses.length,
        itemBuilder: (context, index) {
          return ItemSuraDetails(content: verses[index], index: index);
        },
      ),
    );
  }
}
