import 'package:flutter/material.dart';

import 'package:nss/src/login/views/login_view.dart';
import 'package:nss/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.lightScheme(),
      ),
      home: const LoginView(),
    );
  }
}
