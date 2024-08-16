import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:nss/src/home/components/home_card.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 84.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning, Abhigyan.',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('How would you like to make a change today?')
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.75,
              children: [
                HomeCard(
                  title: 'Our Website',
                  icon: PhosphorIcons.globeHemisphereEast(
                      PhosphorIconsStyle.fill),
                  onTap: () {},
                ),
                HomeCard(
                  title: 'Office Bearers',
                  icon: PhosphorIcons.lectern(PhosphorIconsStyle.fill),
                  onTap: () {},
                ),
                HomeCard(
                  title: 'Partner With Us',
                  icon: PhosphorIcons.handWaving(PhosphorIconsStyle.fill),
                  onTap: () {},
                ),
                HomeCard(
                  title: 'Resource Library',
                  icon: PhosphorIcons.books(PhosphorIconsStyle.fill),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
