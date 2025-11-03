import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/style/colors.dart';
import 'package:islamic_app/feature/radio/model/radio_model.dart';

class ChannelBuilder extends StatelessWidget {
  const ChannelBuilder({super.key, required this.radioModel, required this.player});

  final RadioModel radioModel;
  final player;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(radioModel.name, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                await player.play(UrlSource(radioModel.url ?? ''));
              },
              icon: Icon(
                Icons.play_arrow,
                size: 40,
                color: AppColors.primaryLightColor,
              ),
            ),
            IconButton(
              onPressed: () {
                player.pause();
              },
              icon: Icon(
                Icons.stop,
                size: 40,
                color: AppColors.primaryLightColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
