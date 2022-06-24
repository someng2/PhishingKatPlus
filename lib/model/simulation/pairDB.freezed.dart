// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pairDB.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PairDB _$PairDBFromJson(Map<String, dynamic> json) {
  return _PairDB.fromJson(json);
}

/// @nodoc
class _$PairDBTearOff {
  const _$PairDBTearOff();

  _PairDB call(
      {required String sid,
      required String pid,
      @JsonKey(name: 'ac_id') required String acid,
      required int index,
      required String currentActionId,
      required String nextActionId}) {
    return _PairDB(
      sid: sid,
      pid: pid,
      acid: acid,
      index: index,
      currentActionId: currentActionId,
      nextActionId: nextActionId,
    );
  }

  PairDB fromJson(Map<String, Object?> json) {
    return PairDB.fromJson(json);
  }
}

/// @nodoc
const $PairDB = _$PairDBTearOff();

/// @nodoc
mixin _$PairDB {
  String get sid => throw _privateConstructorUsedError;
  String get pid => throw _privateConstructorUsedError;
  @JsonKey(name: 'ac_id')
  String get acid => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get currentActionId => throw _privateConstructorUsedError;
  String get nextActionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PairDBCopyWith<PairDB> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairDBCopyWith<$Res> {
  factory $PairDBCopyWith(PairDB value, $Res Function(PairDB) then) =
      _$PairDBCopyWithImpl<$Res>;
  $Res call(
      {String sid,
      String pid,
      @JsonKey(name: 'ac_id') String acid,
      int index,
      String currentActionId,
      String nextActionId});
}

/// @nodoc
class _$PairDBCopyWithImpl<$Res> implements $PairDBCopyWith<$Res> {
  _$PairDBCopyWithImpl(this._value, this._then);

  final PairDB _value;
  // ignore: unused_field
  final $Res Function(PairDB) _then;

  @override
  $Res call({
    Object? sid = freezed,
    Object? pid = freezed,
    Object? acid = freezed,
    Object? index = freezed,
    Object? currentActionId = freezed,
    Object? nextActionId = freezed,
  }) {
    return _then(_value.copyWith(
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      acid: acid == freezed
          ? _value.acid
          : acid // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      currentActionId: currentActionId == freezed
          ? _value.currentActionId
          : currentActionId // ignore: cast_nullable_to_non_nullable
              as String,
      nextActionId: nextActionId == freezed
          ? _value.nextActionId
          : nextActionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PairDBCopyWith<$Res> implements $PairDBCopyWith<$Res> {
  factory _$PairDBCopyWith(_PairDB value, $Res Function(_PairDB) then) =
      __$PairDBCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sid,
      String pid,
      @JsonKey(name: 'ac_id') String acid,
      int index,
      String currentActionId,
      String nextActionId});
}

/// @nodoc
class __$PairDBCopyWithImpl<$Res> extends _$PairDBCopyWithImpl<$Res>
    implements _$PairDBCopyWith<$Res> {
  __$PairDBCopyWithImpl(_PairDB _value, $Res Function(_PairDB) _then)
      : super(_value, (v) => _then(v as _PairDB));

  @override
  _PairDB get _value => super._value as _PairDB;

  @override
  $Res call({
    Object? sid = freezed,
    Object? pid = freezed,
    Object? acid = freezed,
    Object? index = freezed,
    Object? currentActionId = freezed,
    Object? nextActionId = freezed,
  }) {
    return _then(_PairDB(
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      acid: acid == freezed
          ? _value.acid
          : acid // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      currentActionId: currentActionId == freezed
          ? _value.currentActionId
          : currentActionId // ignore: cast_nullable_to_non_nullable
              as String,
      nextActionId: nextActionId == freezed
          ? _value.nextActionId
          : nextActionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PairDB implements _PairDB {
  _$_PairDB(
      {required this.sid,
      required this.pid,
      @JsonKey(name: 'ac_id') required this.acid,
      required this.index,
      required this.currentActionId,
      required this.nextActionId});

  factory _$_PairDB.fromJson(Map<String, dynamic> json) =>
      _$$_PairDBFromJson(json);

  @override
  final String sid;
  @override
  final String pid;
  @override
  @JsonKey(name: 'ac_id')
  final String acid;
  @override
  final int index;
  @override
  final String currentActionId;
  @override
  final String nextActionId;

  @override
  String toString() {
    return 'PairDB(sid: $sid, pid: $pid, acid: $acid, index: $index, currentActionId: $currentActionId, nextActionId: $nextActionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PairDB &&
            const DeepCollectionEquality().equals(other.sid, sid) &&
            const DeepCollectionEquality().equals(other.pid, pid) &&
            const DeepCollectionEquality().equals(other.acid, acid) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.currentActionId, currentActionId) &&
            const DeepCollectionEquality()
                .equals(other.nextActionId, nextActionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sid),
      const DeepCollectionEquality().hash(pid),
      const DeepCollectionEquality().hash(acid),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(currentActionId),
      const DeepCollectionEquality().hash(nextActionId));

  @JsonKey(ignore: true)
  @override
  _$PairDBCopyWith<_PairDB> get copyWith =>
      __$PairDBCopyWithImpl<_PairDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PairDBToJson(this);
  }
}

abstract class _PairDB implements PairDB {
  factory _PairDB(
      {required String sid,
      required String pid,
      @JsonKey(name: 'ac_id') required String acid,
      required int index,
      required String currentActionId,
      required String nextActionId}) = _$_PairDB;

  factory _PairDB.fromJson(Map<String, dynamic> json) = _$_PairDB.fromJson;

  @override
  String get sid;
  @override
  String get pid;
  @override
  @JsonKey(name: 'ac_id')
  String get acid;
  @override
  int get index;
  @override
  String get currentActionId;
  @override
  String get nextActionId;
  @override
  @JsonKey(ignore: true)
  _$PairDBCopyWith<_PairDB> get copyWith => throw _privateConstructorUsedError;
}
