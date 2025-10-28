import 'package:flutter/material.dart';

class AhadethHead extends StatelessWidget {
  const AhadethHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Text('Ahadeth', style: Theme.of(context).textTheme.titleMedium),
        Divider(),
      ],
    );
  }
}
