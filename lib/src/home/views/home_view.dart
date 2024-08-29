import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nss/src/home/components/home_card.dart';

class HomeView extends StatelessWidget {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  onTap: () async {
                    if (!await launchUrl(
                      new Uri(
                        scheme: 'https',
                        host: 'gopassionate331.github.io',
                      ),
                      mode: LaunchMode.externalApplication,
                    )) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Failed to open the website.'),
                        ),
                      );
                    }
                  },
                ),
                HomeCard(
                  title: 'Office Bearers',
                  icon: PhosphorIcons.lectern(PhosphorIconsStyle.fill),
                  onTap: () {},
                ),
                HomeCard(
                  title: 'Partner With Us',
                  icon: PhosphorIcons.handWaving(PhosphorIconsStyle.fill),
                  onTap: () async {
                    await launchUrl(
                      new Uri(
                        scheme: 'mailto',
                        path: 'nss.mitblr@manipal.edu',
                        query: encodeQueryParameters({
                          'subject': '[Partnership Request] - ',
                          'body':
                              'Hello, I am interested in partnering with you. Please let me know how I can help.'
                        }),
                      ),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
                HomeCard(
                  title: 'Resource Library',
                  icon: PhosphorIcons.books(PhosphorIconsStyle.fill),
                  onTap: () async {
                    if (!await launchUrl(
                      new Uri(
                        scheme: 'https',
                        host: 'teams.office.com',
                      ),
                      mode: LaunchMode.externalApplication,
                    )) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Failed to open the website.'),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
