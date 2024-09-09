// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volunteer_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VolunteerHistoryModel _$VolunteerHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _VolunteerHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$VolunteerHistoryModel {
  String get eventId => throw _privateConstructorUsedError;
  String get adminId => throw _privateConstructorUsedError;
  String get hours => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this VolunteerHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolunteerHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolunteerHistoryModelCopyWith<VolunteerHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolunteerHistoryModelCopyWith<$Res> {
  factory $VolunteerHistoryModelCopyWith(VolunteerHistoryModel value,
          $Res Function(VolunteerHistoryModel) then) =
      _$VolunteerHistoryModelCopyWithImpl<$Res, VolunteerHistoryModel>;
  @useResult
  $Res call({String eventId, String adminId, String hours, String reason});
}

/// @nodoc
class _$VolunteerHistoryModelCopyWithImpl<$Res,
        $Val extends VolunteerHistoryModel>
    implements $VolunteerHistoryModelCopyWith<$Res> {
  _$VolunteerHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolunteerHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? adminId = null,
    Object? hours = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VolunteerHistoryModelImplCopyWith<$Res>
    implements $VolunteerHistoryModelCopyWith<$Res> {
  factory _$$VolunteerHistoryModelImplCopyWith(
          _$VolunteerHistoryModelImpl value,
          $Res Function(_$VolunteerHistoryModelImpl) then) =
      __$$VolunteerHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventId, String adminId, String hours, String reason});
}

/// @nodoc
class __$$VolunteerHistoryModelImplCopyWithImpl<$Res>
    extends _$VolunteerHistoryModelCopyWithImpl<$Res,
        _$VolunteerHistoryModelImpl>
    implements _$$VolunteerHistoryModelImplCopyWith<$Res> {
  __$$VolunteerHistoryModelImplCopyWithImpl(_$VolunteerHistoryModelImpl _value,
      $Res Function(_$VolunteerHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolunteerHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? adminId = null,
    Object? hours = null,
    Object? reason = null,
  }) {
    return _then(_$VolunteerHistoryModelImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$VolunteerHistoryModelImpl implements _VolunteerHistoryModel {
  const _$VolunteerHistoryModelImpl(
      {required this.eventId,
      required this.adminId,
      required this.hours,
      required this.reason});

  factory _$VolunteerHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolunteerHistoryModelImplFromJson(json);

  @override
  final String eventId;
  @override
  final String adminId;
  @override
  final String hours;
  @override
  final String reason;

  @override
  String toString() {
    return 'VolunteerHistoryModel(eventId: $eventId, adminId: $adminId, hours: $hours, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolunteerHistoryModelImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, adminId, hours, reason);

  /// Create a copy of VolunteerHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolunteerHistoryModelImplCopyWith<_$VolunteerHistoryModelImpl>
      get copyWith => __$$VolunteerHistoryModelImplCopyWithImpl<
          _$VolunteerHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolunteerHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _VolunteerHistoryModel implements VolunteerHistoryModel {
  const factory _VolunteerHistoryModel(
      {required final String eventId,
      required final String adminId,
      required final String hours,
      required final String reason}) = _$VolunteerHistoryModelImpl;

  factory _VolunteerHistoryModel.fromJson(Map<String, dynamic> json) =
      _$VolunteerHistoryModelImpl.fromJson;

  @override
  String get eventId;
  @override
  String get adminId;
  @override
  String get hours;
  @override
  String get reason;

  /// Create a copy of VolunteerHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolunteerHistoryModelImplCopyWith<_$VolunteerHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
