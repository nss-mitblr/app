import 'package:flutter/material.dart';
import 'package:nss/src/history/views/volunteer_history_view.dart';
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
            Text('Satyajitsinh Jhala',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('satyajitsinh2410@learner.manipal.edu',
                style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(height: 20),

            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '120 Hours',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('On-Ground')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 64, child: VerticalDivider()),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20 Hours',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Off-Ground')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Divider(),
            ),

            /// -- MENU
            ProfileMenuWidget(
              title: 'Volunteer History',
              icon: PhosphorIcons.handHeart(PhosphorIconsStyle.fill),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VolunteerHistoryView()));
              },
            ),
            ProfileMenuWidget(
              title: 'Information',
              icon: Icons.info,
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Divider(),
            ),
            ProfileMenuWidget(
              title: 'Logout',
              icon: Icons.logout,
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
