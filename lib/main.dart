import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:nss/src/app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('nss');

  runApp(const ProviderScope(child: MainApp()));
}
