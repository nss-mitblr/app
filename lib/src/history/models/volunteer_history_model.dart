import 'package:freezed_annotation/freezed_annotation.dart';
part 'volunteer_history_model.freezed.dart';
part 'volunteer_history_model.g.dart';

@freezed
class VolunteerHistoryModel with _$VolunteerHistoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory VolunteerHistoryModel({
    required String eventId,
    required String adminId,
    required String hours,
    required String reason,
  }) = _VolunteerHistoryModel;

  factory VolunteerHistoryModel.fromJson(Map<String, Object?> json) =>
      _$VolunteerHistoryModelFromJson(json);
}
