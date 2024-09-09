import 'dart:convert';
import 'package:nss/src/history/models/volunteer_history_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'volunteer_history_controller.g.dart';

@riverpod
class VolunteerHistory extends _$VolunteerHistory {
  @override
  Future<List<VolunteerHistoryModel>> build() async {
    return await getVolunteerHistory();
  }

  Future<List<VolunteerHistoryModel>> getVolunteerHistory() async {
    final String jsonString = await rootBundle
        .loadString('lib/src/history/data/volunteer_history_data.json');

    return List<VolunteerHistoryModel>.from(
        json.decode(jsonString).map((x) => VolunteerHistoryModel.fromJson(x)));
  }
}
