import 'dart:convert';

import 'package:nss/src/events/models/event_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'event_controller.g.dart';

@riverpod
class Events extends _$Events {
  @override
  Future<List<EventModel>> build() async {
    return await getEvents();
  }

  Future<List<EventModel>> getEvents() async {
    final String jsonString =
        await rootBundle.loadString('lib/src/events/data/event_data.json');

    return List<EventModel>.from(
        json.decode(jsonString).map((x) => EventModel.fromJson(x)));
  }
}
