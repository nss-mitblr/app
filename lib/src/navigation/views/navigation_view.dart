import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:nss/src/events/views/event_view.dart';
import 'package:nss/src/home/views/home_view.dart';
import 'package:nss/src/navigation/components/keep_alive_page.dart';
import 'package:nss/src/navigation/components/theme_switcher.dart';
import 'package:nss/src/profile/views/profile_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  final List<Widget> _views = <Widget>[
    KeepAlivePage(child: EventsView()),
    KeepAlivePage(child: HomeView()),
    KeepAlivePage(child: ProfileView()),
  ];
  PageController _pageController = PageController(initialPage: 1);
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: AppBar(
                backgroundColor: colorScheme.surface.withOpacity(0.6),
                title: Image.asset(
                  'assets/logo.png',
                  width: 48,
                ),
                actions: [
                  ThemeSwitcher(),
                ],
                elevation: 0.0,
                scrolledUnderElevation: 0.0,
              ),
            ),
          ),
        ),
        preferredSize: const Size(double.infinity, 65.0),
      ),
      body: PageView(
        physics: const PageScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        onPageChanged: ((index) {
          setState(() {
            _selectedIndex = index;
          });
        }),
        children: _views,
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child: NavigationBar(
            selectedIndex: _selectedIndex,
            onDestinationSelected: ((index) {
              _pageController.jumpToPage(index);
            }),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: <NavigationDestination>[
              NavigationDestination(
                icon: Icon(
                  PhosphorIconsBold.compass,
                  size: 28,
                ),
                label: 'Events',
                selectedIcon: Icon(Icons.explore),
              ),
              NavigationDestination(
                icon: Icon(
                  PhosphorIconsBold.house,
                  size: 28,
                ),
                label: 'Home',
                selectedIcon: Icon(PhosphorIconsFill.house),
              ),
              NavigationDestination(
                icon: Icon(
                  PhosphorIconsBold.user,
                  size: 28,
                ),
                label: 'Profile',
                selectedIcon: Icon(PhosphorIconsFill.user),
              ),
            ],
            elevation: 0.0,
            backgroundColor: colorScheme.surface.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
