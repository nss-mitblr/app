import 'package:flutter/material.dart';

import 'package:nss/src/events/components/event_list.dart';
import 'package:nss/src/events/controllers/event_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventsView extends ConsumerWidget {
  const EventsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider);
    return events.when(
      data: (data) => Container(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 84.0,
            ),
            Text(
              'Events',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Here are the upcoming events you can volunteer for.'),
            // const SizedBox(
            //     height: 5.0), // Add spacing between text and EventList
            Expanded(
              child: EventList(events: data),
            ),
          ],
        ),
      ),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
