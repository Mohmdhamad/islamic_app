import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';

class HadethContent extends StatelessWidget {
  HadethContent({super.key, required this.ahadeth});

  List<String> ahadeth;

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
        color: AppColors.white,
        borderRadius: BorderRadiusDirectional.circular(10.r),
      ),
      child: ListView.builder(
        itemCount: ahadeth.length,
        itemBuilder: (context, index) {
          return Text(
            ahadeth[index],
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.bodyMedium,
          );
        },
      ),
    );
  }
}
