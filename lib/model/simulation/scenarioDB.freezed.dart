// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scenarioDB.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScenarioDB _$ScenarioDBFromJson(Map<String, dynamic> json) {
  return _ScenarioDB.fromJson(json);
}

/// @nodoc
class _$ScenarioDBTearOff {
  const _$ScenarioDBTearOff();

  _ScenarioDB call(
      {required String sid,
      required String medium,
      required String phoneNumber,
      required String type,
      required String subtype,
      required int score}) {
    return _ScenarioDB(
      sid: sid,
      medium: medium,
      phoneNumber: phoneNumber,
      type: type,
      subtype: subtype,
      score: score,
    );
  }

  ScenarioDB fromJson(Map<String, Object?> json) {
    return ScenarioDB.fromJson(json);
  }
}

/// @nodoc
const $ScenarioDB = _$ScenarioDBTearOff();

/// @nodoc
mixin _$ScenarioDB {
  String get sid => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get subtype => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScenarioDBCopyWith<ScenarioDB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioDBCopyWith<$Res> {
  factory $ScenarioDBCopyWith(
          ScenarioDB value, $Res Function(ScenarioDB) then) =
      _$ScenarioDBCopyWithImpl<$Res>;
  $Res call(
      {String sid,
      String medium,
      String phoneNumber,
      String type,
      String subtype,
      int score});
}

/// @nodoc
class _$ScenarioDBCopyWithImpl<$Res> implements $ScenarioDBCopyWith<$Res> {
  _$ScenarioDBCopyWithImpl(this._value, this._then);

  final ScenarioDB _value;
  // ignore: unused_field
  final $Res Function(ScenarioDB) _then;

  @override
  $Res call({
    Object? sid = freezed,
    Object? medium = freezed,
    Object? phoneNumber = freezed,
    Object? type = freezed,
    Object? subtype = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScenarioDBCopyWith<$Res> implements $ScenarioDBCopyWith<$Res> {
  factory _$ScenarioDBCopyWith(
          _ScenarioDB value, $Res Function(_ScenarioDB) then) =
      __$ScenarioDBCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sid,
      String medium,
      String phoneNumber,
      String type,
      String subtype,
      int score});
}

/// @nodoc
class __$ScenarioDBCopyWithImpl<$Res> extends _$ScenarioDBCopyWithImpl<$Res>
    implements _$ScenarioDBCopyWith<$Res> {
  __$ScenarioDBCopyWithImpl(
      _ScenarioDB _value, $Res Function(_ScenarioDB) _then)
      : super(_value, (v) => _then(v as _ScenarioDB));

  @override
  _ScenarioDB get _value => super._value as _ScenarioDB;

  @override
  $Res call({
    Object? sid = freezed,
    Object? medium = freezed,
    Object? phoneNumber = freezed,
    Object? type = freezed,
    Object? subtype = freezed,
    Object? score = freezed,
  }) {
    return _then(_ScenarioDB(
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: subtype == freezed
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScenarioDB implements _ScenarioDB {
  _$_ScenarioDB(
      {required this.sid,
      required this.medium,
      required this.phoneNumber,
      required this.type,
      required this.subtype,
      required this.score});

  factory _$_ScenarioDB.fromJson(Map<String, dynamic> json) =>
      _$$_ScenarioDBFromJson(json);

  @override
  final String sid;
  @override
  final String medium;
  @override
  final String phoneNumber;
  @override
  final String type;
  @override
  final String subtype;
  @override
  final int score;

  @override
  String toString() {
    return 'ScenarioDB(sid: $sid, medium: $medium, phoneNumber: $phoneNumber, type: $type, subtype: $subtype, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScenarioDB &&
            const DeepCollectionEquality().equals(other.sid, sid) &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.subtype, subtype) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sid),
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(subtype),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$ScenarioDBCopyWith<_ScenarioDB> get copyWith =>
      __$ScenarioDBCopyWithImpl<_ScenarioDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScenarioDBToJson(this);
  }
}

abstract class _ScenarioDB implements ScenarioDB {
  factory _ScenarioDB(
      {required String sid,
      required String medium,
      required String phoneNumber,
      required String type,
      required String subtype,
      required int score}) = _$_ScenarioDB;

  factory _ScenarioDB.fromJson(Map<String, dynamic> json) =
      _$_ScenarioDB.fromJson;

  @override
  String get sid;
  @override
  String get medium;
  @override
  String get phoneNumber;
  @override
  String get type;
  @override
  String get subtype;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$ScenarioDBCopyWith<_ScenarioDB> get copyWith =>
      throw _privateConstructorUsedError;
}
