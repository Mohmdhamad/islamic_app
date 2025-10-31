import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import 'package:islamic_app/feature/settings/view_model/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfigProvider provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image.asset(provider.isDarkTheme() ? AppImages.headSebhaDark : AppImages.headSebhaLight),
            Image.asset(provider.isDarkTheme() ? AppImages.bodySebhaDark : AppImages.bodySebhaLight),
          ],
        ),
        ElevatedButton(
            onPressed: (){},
            child: Text('')),


      ],
    );
  }
}
