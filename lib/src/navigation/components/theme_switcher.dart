import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:nss/src/settings/controllers/settings_controller.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final settingsNotifier = ref.read(settingsProvider.notifier);

    return IconButton(
      onPressed: () {
        if (settings.themeMode == ThemeMode.dark) {
          settingsNotifier.updateThemeMode(ThemeMode.light);
        } else {
          settingsNotifier.updateThemeMode(ThemeMode.dark);
        }
      },
      icon: (settings.themeMode == ThemeMode.dark
          ? Icon(PhosphorIconsFill.moon)
          : Icon(PhosphorIconsFill.sun)),
    );
  }
}
