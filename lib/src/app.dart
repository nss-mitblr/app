import 'package:flutter/material.dart';

import 'package:nss/components/loading_icon.dart';
import 'package:nss/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true, colorScheme: MaterialTheme.lightScheme()),
      home: const LoadingIcon(),
    );
  }
}
