import 'package:flutter/material.dart';

AppBar homeAppbar(context) {
  return AppBar(
    centerTitle: true,
    title: Text('Islami', style: Theme.of(context).textTheme.titleLarge),
    elevation: 0.0,
  );
}
