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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDB _$UserDBFromJson(Map<String, dynamic> json) {
  return _UserDB.fromJson(json);
}

/// @nodoc
mixin _$UserDB {
  int get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get birthYear => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get interest_keyword => throw _privateConstructorUsedError;
  String get reg_date => throw _privateConstructorUsedError;
  String get mod_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDBCopyWith<UserDB> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDBCopyWith<$Res> {
  factory $UserDBCopyWith(UserDB value, $Res Function(UserDB) then) =
      _$UserDBCopyWithImpl<$Res>;
  $Res call(
      {int uid,
      String name,
      int birthYear,
      String gender,
      String interest_keyword,
      String reg_date,
      String mod_date});
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
    Object? birthYear = freezed,
    Object? gender = freezed,
    Object? interest_keyword = freezed,
    Object? reg_date = freezed,
    Object? mod_date = freezed,
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
      birthYear: birthYear == freezed
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      interest_keyword: interest_keyword == freezed
          ? _value.interest_keyword
          : interest_keyword // ignore: cast_nullable_to_non_nullable
              as String,
      reg_date: reg_date == freezed
          ? _value.reg_date
          : reg_date // ignore: cast_nullable_to_non_nullable
              as String,
      mod_date: mod_date == freezed
          ? _value.mod_date
          : mod_date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDBCopyWith<$Res> implements $UserDBCopyWith<$Res> {
  factory _$$_UserDBCopyWith(_$_UserDB value, $Res Function(_$_UserDB) then) =
      __$$_UserDBCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      String name,
      int birthYear,
      String gender,
      String interest_keyword,
      String reg_date,
      String mod_date});
}

/// @nodoc
class __$$_UserDBCopyWithImpl<$Res> extends _$UserDBCopyWithImpl<$Res>
    implements _$$_UserDBCopyWith<$Res> {
  __$$_UserDBCopyWithImpl(_$_UserDB _value, $Res Function(_$_UserDB) _then)
      : super(_value, (v) => _then(v as _$_UserDB));

  @override
  _$_UserDB get _value => super._value as _$_UserDB;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? gender = freezed,
    Object? interest_keyword = freezed,
    Object? reg_date = freezed,
    Object? mod_date = freezed,
  }) {
    return _then(_$_UserDB(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear: birthYear == freezed
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      interest_keyword: interest_keyword == freezed
          ? _value.interest_keyword
          : interest_keyword // ignore: cast_nullable_to_non_nullable
              as String,
      reg_date: reg_date == freezed
          ? _value.reg_date
          : reg_date // ignore: cast_nullable_to_non_nullable
              as String,
      mod_date: mod_date == freezed
          ? _value.mod_date
          : mod_date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDB implements _UserDB {
  _$_UserDB(
      {required this.uid,
      required this.name,
      required this.birthYear,
      required this.gender,
      required this.interest_keyword,
      required this.reg_date,
      required this.mod_date});

  factory _$_UserDB.fromJson(Map<String, dynamic> json) =>
      _$$_UserDBFromJson(json);

  @override
  final int uid;
  @override
  final String name;
  @override
  final int birthYear;
  @override
  final String gender;
  @override
  final String interest_keyword;
  @override
  final String reg_date;
  @override
  final String mod_date;

  @override
  String toString() {
    return 'UserDB(uid: $uid, name: $name, birthYear: $birthYear, gender: $gender, interest_keyword: $interest_keyword, reg_date: $reg_date, mod_date: $mod_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDB &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.birthYear, birthYear) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.interest_keyword, interest_keyword) &&
            const DeepCollectionEquality().equals(other.reg_date, reg_date) &&
            const DeepCollectionEquality().equals(other.mod_date, mod_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(birthYear),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(interest_keyword),
      const DeepCollectionEquality().hash(reg_date),
      const DeepCollectionEquality().hash(mod_date));

  @JsonKey(ignore: true)
  @override
  _$$_UserDBCopyWith<_$_UserDB> get copyWith =>
      __$$_UserDBCopyWithImpl<_$_UserDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDBToJson(this);
  }
}

abstract class _UserDB implements UserDB {
  factory _UserDB(
      {required final int uid,
      required final String name,
      required final int birthYear,
      required final String gender,
      required final String interest_keyword,
      required final String reg_date,
      required final String mod_date}) = _$_UserDB;

  factory _UserDB.fromJson(Map<String, dynamic> json) = _$_UserDB.fromJson;

  @override
  int get uid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get birthYear => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  String get interest_keyword => throw _privateConstructorUsedError;
  @override
  String get reg_date => throw _privateConstructorUsedError;
  @override
  String get mod_date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDBCopyWith<_$_UserDB> get copyWith =>
      throw _privateConstructorUsedError;
}
