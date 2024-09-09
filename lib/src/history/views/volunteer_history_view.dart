import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nss/src/history/components/volunteer_history_card.dart';
import 'package:nss/src/history/controllers/volunteer_history_controller.dart';

class VolunteerHistoryView extends ConsumerWidget {
  const VolunteerHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final volunteerHistory = ref.watch(volunteerHistoryProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text('Volunteer History'),
        ),
        body: volunteerHistory.when(
          data: (data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return VolunteerHistoryCard(volunteerHistory: data[index]);
            },
          ),
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text('Error: $error')),
        ));
  }
}
