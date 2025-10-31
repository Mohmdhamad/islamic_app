import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_images.dart';
import '../../../settings/view_model/provider/app_config_provider.dart';
import '../../view_model/sebha_provider/sebha_provider.dart';

class SebhaWidgetBuilder extends StatelessWidget {
  const SebhaWidgetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfigProvider provider = Provider.of<AppConfigProvider>(context);
    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              provider.isDarkTheme()
                  ? AppImages.headSebhaDark
                  : AppImages.headSebhaLight,
              scale: 1.5,
            ),
          ),
          Align(
            alignment: AlignmentGeometry.center,
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.07,
              ),
              child: AnimatedRotation(
                duration: Duration(milliseconds: 500),
                turns: context.watch<SebhaProvider>().turns,
                child: Image.asset(
                  provider.isDarkTheme()
                      ? AppImages.bodySebhaDark
                      : AppImages.bodySebhaLight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
