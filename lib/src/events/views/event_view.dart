import 'package:flutter/material.dart';

import 'package:nss/src/events/components/event_list.dart';
import 'package:nss/src/events/controllers/event_controller.dart';
import 'package:nss/src/events/models/event_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nss/src/events/controllers/event_controller.dart';

class EventsView extends ConsumerWidget {
  const EventsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 1.0),
        child: events.when(
            data: (data) => EventList(events: data),
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text('Error: $error'))),
      ),
    );
  }
}
