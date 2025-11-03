import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  const ItemSuraDetails({
    super.key,
    required this.content,
    required this.index,
  });

  final String content;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content($index)',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
