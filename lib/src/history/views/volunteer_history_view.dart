import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nss/src/history/components/volunteer_history_card.dart';
import 'package:nss/src/history/controllers/volunteer_history_controller.dart';

class VolunteerHistoryView extends ConsumerWidget {
  const VolunteerHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final volunteerHistory = ref.watch(volunteerHistoryProvider);
    return volunteerHistory.when(
      data: (data) => Padding(
        padding: const EdgeInsets.all(18.0),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return VolunteerHistoryCard(volunteerHistory: data[index]);
                },
                childCount: data.length,
              ),
            ),
          ],
        ),
      ),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
