import 'package:flutter/material.dart';
import 'package:islamic_app/feature/sebha/view/widget/sebha_widget_builder.dart';
import 'package:islamic_app/feature/sebha/view/widget/tasbeh_widget.dart';
import 'package:provider/provider.dart';

import '../../view_model/sebha_provider/sebha_provider.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SebhaProvider(),
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: MediaQuery.of(context).size.height * 0.05,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const SebhaWidgetBuilder(), const TasbehWidget()],
          ),
        );
      },
    );
  }
}
