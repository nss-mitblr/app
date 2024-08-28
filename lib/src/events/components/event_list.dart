import 'package:flutter/material.dart';

import 'package:nss/src/events/components/event_card.dart';
import 'package:nss/src/events/models/event_model.dart';

class EventList extends StatelessWidget {
  final List<EventModel>? events;

  const EventList({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    if (events!.isEmpty) {
      return const Center(
        child: Text('There are no upcoming events.'),
      );
    }

    return ListView.builder(
      itemCount: events!.length,
      itemBuilder: (context, index) {
        return EventCard(event: events![index]);
      },
    );
  }
}
