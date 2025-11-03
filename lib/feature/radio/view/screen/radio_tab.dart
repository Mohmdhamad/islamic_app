import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_images.dart';
import 'package:islamic_app/feature/radio/view/widget/channel_list.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 1, child: Image.asset(AppImages.radio)),
          SizedBox(height: MediaQuery.of(context).size.height * .02),
          ChannelList(),
        ],
      ),
    );
  }
}
