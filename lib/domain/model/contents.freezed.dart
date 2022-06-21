// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contents _$ContentsFromJson(Map<String, dynamic> json) {
  return _Contents.fromJson(json);
}

/// @nodoc
mixin _$Contents {
  String get ac_id => throw _privateConstructorUsedError;
  String get sid => throw _privateConstructorUsedError;
  String get aid => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get c_type => throw _privateConstructorUsedError;
  dynamic get contents => throw _privateConstructorUsedError;
  int get hasNextAction => throw _privateConstructorUsedError;
  DateTime get reg_date => throw _privateConstructorUsedError;
  DateTime get mod_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentsCopyWith<Contents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsCopyWith<$Res> {
  factory $ContentsCopyWith(Contents value, $Res Function(Contents) then) =
      _$ContentsCopyWithImpl<$Res>;
  $Res call(
      {String ac_id,
      String sid,
      String aid,
      int order,
      String c_type,
      dynamic contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date});
}

/// @nodoc
class _$ContentsCopyWithImpl<$Res> implements $ContentsCopyWith<$Res> {
  _$ContentsCopyWithImpl(this._value, this._then);

  final Contents _value;
  // ignore: unused_field
  final $Res Function(Contents) _then;

  @override
  $Res call({
    Object? ac_id = freezed,
    Object? sid = freezed,
    Object? aid = freezed,
    Object? order = freezed,
    Object? c_type = freezed,
    Object? contents = freezed,
    Object? hasNextAction = freezed,
    Object? reg_date = freezed,
    Object? mod_date = freezed,
  }) {
    return _then(_value.copyWith(
      ac_id: ac_id == freezed
          ? _value.ac_id
          : ac_id // ignore: cast_nullable_to_non_nullable
              as String,
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      aid: aid == freezed
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      c_type: c_type == freezed
          ? _value.c_type
          : c_type // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasNextAction: hasNextAction == freezed
          ? _value.hasNextAction
          : hasNextAction // ignore: cast_nullable_to_non_nullable
              as int,
      reg_date: reg_date == freezed
          ? _value.reg_date
          : reg_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mod_date: mod_date == freezed
          ? _value.mod_date
          : mod_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentsCopyWith<$Res> implements $ContentsCopyWith<$Res> {
  factory _$$_ContentsCopyWith(
          _$_Contents value, $Res Function(_$_Contents) then) =
      __$$_ContentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String ac_id,
      String sid,
      String aid,
      int order,
      String c_type,
      dynamic contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date});
}

/// @nodoc
class __$$_ContentsCopyWithImpl<$Res> extends _$ContentsCopyWithImpl<$Res>
    implements _$$_ContentsCopyWith<$Res> {
  __$$_ContentsCopyWithImpl(
      _$_Contents _value, $Res Function(_$_Contents) _then)
      : super(_value, (v) => _then(v as _$_Contents));

  @override
  _$_Contents get _value => super._value as _$_Contents;

  @override
  $Res call({
    Object? ac_id = freezed,
    Object? sid = freezed,
    Object? aid = freezed,
    Object? order = freezed,
    Object? c_type = freezed,
    Object? contents = freezed,
    Object? hasNextAction = freezed,
    Object? reg_date = freezed,
    Object? mod_date = freezed,
  }) {
    return _then(_$_Contents(
      ac_id: ac_id == freezed
          ? _value.ac_id
          : ac_id // ignore: cast_nullable_to_non_nullable
              as String,
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      aid: aid == freezed
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      c_type: c_type == freezed
          ? _value.c_type
          : c_type // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasNextAction: hasNextAction == freezed
          ? _value.hasNextAction
          : hasNextAction // ignore: cast_nullable_to_non_nullable
              as int,
      reg_date: reg_date == freezed
          ? _value.reg_date
          : reg_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mod_date: mod_date == freezed
          ? _value.mod_date
          : mod_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contents implements _Contents {
  _$_Contents(
      {required this.ac_id,
      required this.sid,
      required this.aid,
      required this.order,
      required this.c_type,
      required this.contents,
      required this.hasNextAction,
      required this.reg_date,
      required this.mod_date});

  factory _$_Contents.fromJson(Map<String, dynamic> json) =>
      _$$_ContentsFromJson(json);

  @override
  final String ac_id;
  @override
  final String sid;
  @override
  final String aid;
  @override
  final int order;
  @override
  final String c_type;
  @override
  final dynamic contents;
  @override
  final int hasNextAction;
  @override
  final DateTime reg_date;
  @override
  final DateTime mod_date;

  @override
  String toString() {
    return 'Contents(ac_id: $ac_id, sid: $sid, aid: $aid, order: $order, c_type: $c_type, contents: $contents, hasNextAction: $hasNextAction, reg_date: $reg_date, mod_date: $mod_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contents &&
            const DeepCollectionEquality().equals(other.ac_id, ac_id) &&
            const DeepCollectionEquality().equals(other.sid, sid) &&
            const DeepCollectionEquality().equals(other.aid, aid) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.c_type, c_type) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality()
                .equals(other.hasNextAction, hasNextAction) &&
            const DeepCollectionEquality().equals(other.reg_date, reg_date) &&
            const DeepCollectionEquality().equals(other.mod_date, mod_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ac_id),
      const DeepCollectionEquality().hash(sid),
      const DeepCollectionEquality().hash(aid),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(c_type),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(hasNextAction),
      const DeepCollectionEquality().hash(reg_date),
      const DeepCollectionEquality().hash(mod_date));

  @JsonKey(ignore: true)
  @override
  _$$_ContentsCopyWith<_$_Contents> get copyWith =>
      __$$_ContentsCopyWithImpl<_$_Contents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentsToJson(this);
  }
}

abstract class _Contents implements Contents {
  factory _Contents(
      {required final String ac_id,
      required final String sid,
      required final String aid,
      required final int order,
      required final String c_type,
      required final dynamic contents,
      required final int hasNextAction,
      required final DateTime reg_date,
      required final DateTime mod_date}) = _$_Contents;

  factory _Contents.fromJson(Map<String, dynamic> json) = _$_Contents.fromJson;

  @override
  String get ac_id => throw _privateConstructorUsedError;
  @override
  String get sid => throw _privateConstructorUsedError;
  @override
  String get aid => throw _privateConstructorUsedError;
  @override
  int get order => throw _privateConstructorUsedError;
  @override
  String get c_type => throw _privateConstructorUsedError;
  @override
  dynamic get contents => throw _privateConstructorUsedError;
  @override
  int get hasNextAction => throw _privateConstructorUsedError;
  @override
  DateTime get reg_date => throw _privateConstructorUsedError;
  @override
  DateTime get mod_date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContentsCopyWith<_$_Contents> get copyWith =>
      throw _privateConstructorUsedError;
}
