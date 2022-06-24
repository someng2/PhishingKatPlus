// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'userDB.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDB _$UserDBFromJson(Map<String, dynamic> json) {
  return _UserDB.fromJson(json);
}

/// @nodoc
class _$UserDBTearOff {
  const _$UserDBTearOff();

  _UserDB call({required int uid, required String name, required int age}) {
    return _UserDB(
      uid: uid,
      name: name,
      age: age,
    );
  }

  UserDB fromJson(Map<String, Object?> json) {
    return UserDB.fromJson(json);
  }
}

/// @nodoc
const $UserDB = _$UserDBTearOff();

/// @nodoc
mixin _$UserDB {
  int get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDBCopyWith<UserDB> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDBCopyWith<$Res> {
  factory $UserDBCopyWith(UserDB value, $Res Function(UserDB) then) =
      _$UserDBCopyWithImpl<$Res>;
  $Res call({int uid, String name, int age});
}

/// @nodoc
class _$UserDBCopyWithImpl<$Res> implements $UserDBCopyWith<$Res> {
  _$UserDBCopyWithImpl(this._value, this._then);

  final UserDB _value;
  // ignore: unused_field
  final $Res Function(UserDB) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserDBCopyWith<$Res> implements $UserDBCopyWith<$Res> {
  factory _$UserDBCopyWith(_UserDB value, $Res Function(_UserDB) then) =
      __$UserDBCopyWithImpl<$Res>;
  @override
  $Res call({int uid, String name, int age});
}

/// @nodoc
class __$UserDBCopyWithImpl<$Res> extends _$UserDBCopyWithImpl<$Res>
    implements _$UserDBCopyWith<$Res> {
  __$UserDBCopyWithImpl(_UserDB _value, $Res Function(_UserDB) _then)
      : super(_value, (v) => _then(v as _UserDB));

  @override
  _UserDB get _value => super._value as _UserDB;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_UserDB(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDB implements _UserDB {
  _$_UserDB({required this.uid, required this.name, required this.age});

  factory _$_UserDB.fromJson(Map<String, dynamic> json) =>
      _$$_UserDBFromJson(json);

  @override
  final int uid;
  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'UserDB(uid: $uid, name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDB &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$UserDBCopyWith<_UserDB> get copyWith =>
      __$UserDBCopyWithImpl<_UserDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDBToJson(this);
  }
}

abstract class _UserDB implements UserDB {
  factory _UserDB({required int uid, required String name, required int age}) =
      _$_UserDB;

  factory _UserDB.fromJson(Map<String, dynamic> json) = _$_UserDB.fromJson;

  @override
  int get uid;
  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$UserDBCopyWith<_UserDB> get copyWith => throw _privateConstructorUsedError;
}
