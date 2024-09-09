import 'package:flutter/material.dart';
import 'package:nss/src/history/models/volunteer_history_model.dart';

class VolunteerHistoryCard extends StatefulWidget {
  const VolunteerHistoryCard({Key? key, required this.volunteerHistory})
      : super(key: key);
  final VolunteerHistoryModel volunteerHistory;
  @override
  State<VolunteerHistoryCard> createState() => _VolunteerHistoryCardState();
}

class _VolunteerHistoryCardState extends State<VolunteerHistoryCard> {
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
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.volunteerHistory.adminId,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(widget.volunteerHistory.reason),
                  ],
                )),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 18.0),
                    Text(widget.volunteerHistory.hours),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
