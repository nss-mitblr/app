import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nss/src/events/components/event_card.dart';
import 'package:nss/src/events/controllers/event_controller.dart';

class EventsView extends ConsumerWidget {
  const EventsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider);
    return events.when(
      data: (data) => Padding(
        padding: const EdgeInsets.all(18.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 84.0),
                  Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Here are the upcoming events you can volunteer for.'),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return EventCard(event: data[index]);
                },
                childCount: data.length,
              ),
            ),
            SliverToBoxAdapter(
              child: const SizedBox(height: 84.0),
            ),
          ],
        ),
      ),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
