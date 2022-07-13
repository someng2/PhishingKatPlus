// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() query,
    required TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)
        insertUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? query,
    TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)?
        insertUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? query,
    TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)?
        insertUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Query<T> value) query,
    required TResult Function(InsertUser<T> value) insertUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Query<T> value)? query,
    TResult Function(InsertUser<T> value)? insertUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Query<T> value)? query,
    TResult Function(InsertUser<T> value)? insertUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<T, $Res> {
  factory $UserEventCopyWith(
          UserEvent<T> value, $Res Function(UserEvent<T>) then) =
      _$UserEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<T, $Res> implements $UserEventCopyWith<T, $Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent<T> _value;
  // ignore: unused_field
  final $Res Function(UserEvent<T>) _then;
}

/// @nodoc
abstract class _$$QueryCopyWith<T, $Res> {
  factory _$$QueryCopyWith(_$Query<T> value, $Res Function(_$Query<T>) then) =
      __$$QueryCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$QueryCopyWithImpl<T, $Res> extends _$UserEventCopyWithImpl<T, $Res>
    implements _$$QueryCopyWith<T, $Res> {
  __$$QueryCopyWithImpl(_$Query<T> _value, $Res Function(_$Query<T>) _then)
      : super(_value, (v) => _then(v as _$Query<T>));

  @override
  _$Query<T> get _value => super._value as _$Query<T>;
}

/// @nodoc

class _$Query<T> implements Query<T> {
  const _$Query();

  @override
  String toString() {
    return 'UserEvent<$T>.query()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Query<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() query,
    required TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)
        insertUser,
  }) {
    return query();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? query,
    TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)?
        insertUser,
  }) {
    return query?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? query,
    TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)?
        insertUser,
    required TResult orElse(),
  }) {
    if (query != null) {
      return query();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Query<T> value) query,
    required TResult Function(InsertUser<T> value) insertUser,
  }) {
    return query(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Query<T> value)? query,
    TResult Function(InsertUser<T> value)? insertUser,
  }) {
    return query?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Query<T> value)? query,
    TResult Function(InsertUser<T> value)? insertUser,
    required TResult orElse(),
  }) {
    if (query != null) {
      return query(this);
    }
    return orElse();
  }
}

abstract class Query<T> implements UserEvent<T> {
  const factory Query() = _$Query<T>;
}

/// @nodoc
abstract class _$$InsertUserCopyWith<T, $Res> {
  factory _$$InsertUserCopyWith(
          _$InsertUser<T> value, $Res Function(_$InsertUser<T>) then) =
      __$$InsertUserCopyWithImpl<T, $Res>;
  $Res call(
      {String phone_number,
      String token,
      String name,
      int birthYear,
      String gender,
      String interest});
}

/// @nodoc
class __$$InsertUserCopyWithImpl<T, $Res>
    extends _$UserEventCopyWithImpl<T, $Res>
    implements _$$InsertUserCopyWith<T, $Res> {
  __$$InsertUserCopyWithImpl(
      _$InsertUser<T> _value, $Res Function(_$InsertUser<T>) _then)
      : super(_value, (v) => _then(v as _$InsertUser<T>));

  @override
  _$InsertUser<T> get _value => super._value as _$InsertUser<T>;

  @override
  $Res call({
    Object? phone_number = freezed,
    Object? token = freezed,
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? gender = freezed,
    Object? interest = freezed,
  }) {
    return _then(_$InsertUser<T>(
      phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear == freezed
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int,
      gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      interest == freezed
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InsertUser<T> implements InsertUser<T> {
  const _$InsertUser(this.phone_number, this.token, this.name, this.birthYear,
      this.gender, this.interest);

  @override
  final String phone_number;
  @override
  final String token;
  @override
  final String name;
  @override
  final int birthYear;
  @override
  final String gender;
  @override
  final String interest;

  @override
  String toString() {
    return 'UserEvent<$T>.insertUser(phone_number: $phone_number, token: $token, name: $name, birthYear: $birthYear, gender: $gender, interest: $interest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertUser<T> &&
            const DeepCollectionEquality()
                .equals(other.phone_number, phone_number) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.birthYear, birthYear) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.interest, interest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phone_number),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(birthYear),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(interest));

  @JsonKey(ignore: true)
  @override
  _$$InsertUserCopyWith<T, _$InsertUser<T>> get copyWith =>
      __$$InsertUserCopyWithImpl<T, _$InsertUser<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() query,
    required TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)
        insertUser,
  }) {
    return insertUser(phone_number, token, name, birthYear, gender, interest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? query,
    TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)?
        insertUser,
  }) {
    return insertUser?.call(
        phone_number, token, name, birthYear, gender, interest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? query,
    TResult Function(String phone_number, String token, String name,
            int birthYear, String gender, String interest)?
        insertUser,
    required TResult orElse(),
  }) {
    if (insertUser != null) {
      return insertUser(phone_number, token, name, birthYear, gender, interest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Query<T> value) query,
    required TResult Function(InsertUser<T> value) insertUser,
  }) {
    return insertUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Query<T> value)? query,
    TResult Function(InsertUser<T> value)? insertUser,
  }) {
    return insertUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Query<T> value)? query,
    TResult Function(InsertUser<T> value)? insertUser,
    required TResult orElse(),
  }) {
    if (insertUser != null) {
      return insertUser(this);
    }
    return orElse();
  }
}

abstract class InsertUser<T> implements UserEvent<T> {
  const factory InsertUser(
      final String phone_number,
      final String token,
      final String name,
      final int birthYear,
      final String gender,
      final String interest) = _$InsertUser<T>;

  String get phone_number => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get birthYear => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get interest => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InsertUserCopyWith<T, _$InsertUser<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
