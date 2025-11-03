import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/feature/radio/view/widget/channel_builder.dart';
import 'package:provider/provider.dart';
import '../../../../core/style/colors.dart';
import '../../view_model/provider/radio_provider.dart';

class ChannelList extends StatelessWidget {
  ChannelList({super.key});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    var radioProvider = context.watch<RadioProvider>();
    if (radioProvider.radios.isEmpty) {
      return Expanded(
        child: const Center(
          child: CircularProgressIndicator(color: AppColors.primaryLightColor),
        ),
      );
    }
    return Expanded(
      child: PageView.builder(
        itemCount: radioProvider.radios.length,
        physics: const PageScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Center(
            child: ChannelBuilder(
              player: player,
              radioModel: radioProvider.radios[index],
            ),
          );
        },
      ),
    );
  }
}
