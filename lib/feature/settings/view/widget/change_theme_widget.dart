import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/feature/settings/view_model/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../../../core/style/colors.dart';
import '../../../../l10n/app_localizations.dart';

class ChangeThemeWidget extends StatefulWidget {
  const ChangeThemeWidget({super.key});

  @override
  State<ChangeThemeWidget> createState() => _ChangeThemeWidgetState();
}

class _ChangeThemeWidgetState extends State<ChangeThemeWidget> {
  final GlobalKey _dropdownKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    AppConfigProvider provider = Provider.of<AppConfigProvider>(context);

    return DropdownButtonFormField<ThemeMode>(
      key: _dropdownKey,
      initialValue: provider.appTheme,
      isExpanded: true,
      alignment: AlignmentDirectional.centerStart,
      dropdownColor: AppColors.primaryLightColor,
      icon: Icon(Icons.arrow_drop_down_sharp, color: AppColors.black),
      iconSize: 30.sp,
      menuMaxHeight: 200.h,
      borderRadius: BorderRadius.circular(10.r),
      style: Theme.of(
        context,
      ).textTheme.bodyMedium?.copyWith(color: AppColors.black, fontSize: 16.sp),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
        filled: true,
        fillColor: AppColors.primaryLightColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColors.black, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Colors.grey.shade700, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: const BorderSide(color: AppColors.black, width: 2),
        ),
        prefixIcon: Icon(
          provider.appTheme == ThemeMode.light
              ? Icons.sunny
              : Icons.dark_mode_outlined,
          color: AppColors.black,
          size: 26.sp,
        ),
      ),
      items: [
        DropdownMenuItem(
          value: ThemeMode.light,
          child: Text(AppLocalizations.of(context)!.light),
        ),
        DropdownMenuItem(
          value: ThemeMode.dark,
          child: Text(AppLocalizations.of(context)!.dark),
        ),
      ],
      onChanged: (value) {
        if (value != null) provider.changeTheme(value);
      },
    );
  }
}
