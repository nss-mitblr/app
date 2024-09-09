import 'package:flutter/material.dart';
import 'package:nss/src/events/components/event_register_button.dart';

import 'package:nss/src/events/models/event_model.dart';

class EventCard extends StatefulWidget {
  const EventCard({super.key, required this.event});

  final EventModel event;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(0),
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.event.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    RegistrationButton(),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 18.0),
                    Text(widget.event.location),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Icon(Icons.calendar_month_outlined, size: 18.0),
                      ),
                      Text(widget.event.date),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 4.0),
                            child: Icon(Icons.alarm, size: 18.0),
                          ),
                          Text('${widget.event.time.toString()}'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 4.0),
                            child: Icon(Icons.hourglass_bottom_outlined,
                                size: 18.0),
                          ),
                          Text('${widget.event.hours.toString()} hours'),
                        ],
                      ),
                    )
                  ],
                ), // const Text(' • '),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 2.0),
                //   child: Row(
                //     children: [
                //       const Padding(
                //         padding: EdgeInsets.only(right: 4.0),
                //         child: Icon(Icons.people, size: 18.0),
                //       ),
                //       Text(
                //           '${widget.event.maxVolunteers.toString()} registrations'),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
