import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/style/colors.dart';
import 'package:islamic_app/feature/quran/presentation/screen/sura_details_screen.dart';

class SurasItem extends StatelessWidget {
  const SurasItem({super.key, required this.name, required this.number});
  final String name;
  final int number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Row(
        children: [
          Expanded(
            child: Text(
              '114',
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            color: AppColors.primaryLightColor,
            height: double.infinity,
            width: 3.w,
            padding: EdgeInsetsGeometry.zero,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  SuraDetailsScreen.routeName,
                  arguments: SuraDetailsArgs(name: name, number: number),
                );
              },
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

