// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appContentsDB.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppContentsDB _$AppContentsDBFromJson(Map<String, dynamic> json) {
  return _AppContentsDB.fromJson(json);
}

/// @nodoc
class _$AppContentsDBTearOff {
  const _$AppContentsDBTearOff();

  _AppContentsDB call(
      {@JsonKey(name: 'ac_id') required String acid,
      required dynamic sid,
      required dynamic aid,
      required int order,
      @JsonKey(name: 'c_type') required String ctype,
      required dynamic contents,
      required int hasNextAction}) {
    return _AppContentsDB(
      acid: acid,
      sid: sid,
      aid: aid,
      order: order,
      ctype: ctype,
      contents: contents,
      hasNextAction: hasNextAction,
    );
  }

  AppContentsDB fromJson(Map<String, Object?> json) {
    return AppContentsDB.fromJson(json);
  }
}

/// @nodoc
const $AppContentsDB = _$AppContentsDBTearOff();

/// @nodoc
mixin _$AppContentsDB {
  @JsonKey(name: 'ac_id')
  String get acid => throw _privateConstructorUsedError;
  dynamic get sid => throw _privateConstructorUsedError;
  dynamic get aid => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_type')
  String get ctype => throw _privateConstructorUsedError;
  dynamic get contents => throw _privateConstructorUsedError;
  int get hasNextAction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppContentsDBCopyWith<AppContentsDB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppContentsDBCopyWith<$Res> {
  factory $AppContentsDBCopyWith(
          AppContentsDB value, $Res Function(AppContentsDB) then) =
      _$AppContentsDBCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ac_id') String acid,
      dynamic sid,
      dynamic aid,
      int order,
      @JsonKey(name: 'c_type') String ctype,
      dynamic contents,
      int hasNextAction});
}

/// @nodoc
class _$AppContentsDBCopyWithImpl<$Res>
    implements $AppContentsDBCopyWith<$Res> {
  _$AppContentsDBCopyWithImpl(this._value, this._then);

  final AppContentsDB _value;
  // ignore: unused_field
  final $Res Function(AppContentsDB) _then;

  @override
  $Res call({
    Object? acid = freezed,
    Object? sid = freezed,
    Object? aid = freezed,
    Object? order = freezed,
    Object? ctype = freezed,
    Object? contents = freezed,
    Object? hasNextAction = freezed,
  }) {
    return _then(_value.copyWith(
      acid: acid == freezed
          ? _value.acid
          : acid // ignore: cast_nullable_to_non_nullable
              as String,
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      aid: aid == freezed
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      ctype: ctype == freezed
          ? _value.ctype
          : ctype // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasNextAction: hasNextAction == freezed
          ? _value.hasNextAction
          : hasNextAction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AppContentsDBCopyWith<$Res>
    implements $AppContentsDBCopyWith<$Res> {
  factory _$AppContentsDBCopyWith(
          _AppContentsDB value, $Res Function(_AppContentsDB) then) =
      __$AppContentsDBCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ac_id') String acid,
      dynamic sid,
      dynamic aid,
      int order,
      @JsonKey(name: 'c_type') String ctype,
      dynamic contents,
      int hasNextAction});
}

/// @nodoc
class __$AppContentsDBCopyWithImpl<$Res>
    extends _$AppContentsDBCopyWithImpl<$Res>
    implements _$AppContentsDBCopyWith<$Res> {
  __$AppContentsDBCopyWithImpl(
      _AppContentsDB _value, $Res Function(_AppContentsDB) _then)
      : super(_value, (v) => _then(v as _AppContentsDB));

  @override
  _AppContentsDB get _value => super._value as _AppContentsDB;

  @override
  $Res call({
    Object? acid = freezed,
    Object? sid = freezed,
    Object? aid = freezed,
    Object? order = freezed,
    Object? ctype = freezed,
    Object? contents = freezed,
    Object? hasNextAction = freezed,
  }) {
    return _then(_AppContentsDB(
      acid: acid == freezed
          ? _value.acid
          : acid // ignore: cast_nullable_to_non_nullable
              as String,
      sid: sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      aid: aid == freezed
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      ctype: ctype == freezed
          ? _value.ctype
          : ctype // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasNextAction: hasNextAction == freezed
          ? _value.hasNextAction
          : hasNextAction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppContentsDB implements _AppContentsDB {
  _$_AppContentsDB(
      {@JsonKey(name: 'ac_id') required this.acid,
      required this.sid,
      required this.aid,
      required this.order,
      @JsonKey(name: 'c_type') required this.ctype,
      required this.contents,
      required this.hasNextAction});

  factory _$_AppContentsDB.fromJson(Map<String, dynamic> json) =>
      _$$_AppContentsDBFromJson(json);

  @override
  @JsonKey(name: 'ac_id')
  final String acid;
  @override
  final dynamic sid;
  @override
  final dynamic aid;
  @override
  final int order;
  @override
  @JsonKey(name: 'c_type')
  final String ctype;
  @override
  final dynamic contents;
  @override
  final int hasNextAction;

  @override
  String toString() {
    return 'AppContentsDB(acid: $acid, sid: $sid, aid: $aid, order: $order, ctype: $ctype, contents: $contents, hasNextAction: $hasNextAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppContentsDB &&
            const DeepCollectionEquality().equals(other.acid, acid) &&
            const DeepCollectionEquality().equals(other.sid, sid) &&
            const DeepCollectionEquality().equals(other.aid, aid) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.ctype, ctype) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality()
                .equals(other.hasNextAction, hasNextAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(acid),
      const DeepCollectionEquality().hash(sid),
      const DeepCollectionEquality().hash(aid),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(ctype),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(hasNextAction));

  @JsonKey(ignore: true)
  @override
  _$AppContentsDBCopyWith<_AppContentsDB> get copyWith =>
      __$AppContentsDBCopyWithImpl<_AppContentsDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppContentsDBToJson(this);
  }
}

abstract class _AppContentsDB implements AppContentsDB {
  factory _AppContentsDB(
      {@JsonKey(name: 'ac_id') required String acid,
      required dynamic sid,
      required dynamic aid,
      required int order,
      @JsonKey(name: 'c_type') required String ctype,
      required dynamic contents,
      required int hasNextAction}) = _$_AppContentsDB;

  factory _AppContentsDB.fromJson(Map<String, dynamic> json) =
      _$_AppContentsDB.fromJson;

  @override
  @JsonKey(name: 'ac_id')
  String get acid;
  @override
  dynamic get sid;
  @override
  dynamic get aid;
  @override
  int get order;
  @override
  @JsonKey(name: 'c_type')
  String get ctype;
  @override
  dynamic get contents;
  @override
  int get hasNextAction;
  @override
  @JsonKey(ignore: true)
  _$AppContentsDBCopyWith<_AppContentsDB> get copyWith =>
      throw _privateConstructorUsedError;
}
