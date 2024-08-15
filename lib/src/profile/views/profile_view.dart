import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:nss/src/profile/components/profile_menu_widget.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(
              height: 84.0,
            ),

            /// -- IMAGE
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text('Abhigyan Tripathi',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('CSE Cybersecurity (B), 2026',
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide.none, shape: const StadiumBorder()),
                child: const Text('Edit Profile'),
              ),
            ),
            const SizedBox(height: 20),

            /// -- MENU
            ProfileMenuWidget(
              title: 'Settings',
              icon: PhosphorIcons.gearSix(PhosphorIconsStyle.fill),
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: 'Academic Details',
              icon: PhosphorIcons.graduationCap(PhosphorIconsStyle.bold),
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: 'User Management',
              icon: PhosphorIcons.userGear(PhosphorIconsStyle.fill),
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            ProfileMenuWidget(
              title: 'Information',
              icon: PhosphorIcons.info(PhosphorIconsStyle.fill),
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: 'Logout',
              icon: PhosphorIcons.signOut(PhosphorIconsStyle.bold),
              textColor: Colors.red,
              endIcon: false,
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: 'Information',
              icon: PhosphorIcons.info(PhosphorIconsStyle.fill),
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: 'Logout',
              icon: PhosphorIcons.signOut(PhosphorIconsStyle.bold),
              textColor: Colors.red,
              endIcon: false,
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: 'Information',
              icon: PhosphorIcons.info(PhosphorIconsStyle.fill),
              onPressed: () {},
            ),
            ProfileMenuWidget(
              title: 'Logout',
              icon: PhosphorIcons.signOut(PhosphorIconsStyle.bold),
              textColor: Colors.red,
              endIcon: false,
              onPressed: () {},
            ),

            const SizedBox(
              height: 96,
            )
          ],
        ),
      ),
    );
  }
}
