// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resultCatDescriptionDB.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultCatDescriptionDB _$ResultCatDescriptionDBFromJson(
    Map<String, dynamic> json) {
  return _ResultCatDescriptionDB.fromJson(json);
}

/// @nodoc
class _$ResultCatDescriptionDBTearOff {
  const _$ResultCatDescriptionDBTearOff();

  _ResultCatDescriptionDB call(
      {@JsonKey(name: 'cat_id') required String catid,
      required String description}) {
    return _ResultCatDescriptionDB(
      catid: catid,
      description: description,
    );
  }

  ResultCatDescriptionDB fromJson(Map<String, Object?> json) {
    return ResultCatDescriptionDB.fromJson(json);
  }
}

/// @nodoc
const $ResultCatDescriptionDB = _$ResultCatDescriptionDBTearOff();

/// @nodoc
mixin _$ResultCatDescriptionDB {
  @JsonKey(name: 'cat_id')
  String get catid => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCatDescriptionDBCopyWith<ResultCatDescriptionDB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCatDescriptionDBCopyWith<$Res> {
  factory $ResultCatDescriptionDBCopyWith(ResultCatDescriptionDB value,
          $Res Function(ResultCatDescriptionDB) then) =
      _$ResultCatDescriptionDBCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'cat_id') String catid, String description});
}

/// @nodoc
class _$ResultCatDescriptionDBCopyWithImpl<$Res>
    implements $ResultCatDescriptionDBCopyWith<$Res> {
  _$ResultCatDescriptionDBCopyWithImpl(this._value, this._then);

  final ResultCatDescriptionDB _value;
  // ignore: unused_field
  final $Res Function(ResultCatDescriptionDB) _then;

  @override
  $Res call({
    Object? catid = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      catid: catid == freezed
          ? _value.catid
          : catid // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResultCatDescriptionDBCopyWith<$Res>
    implements $ResultCatDescriptionDBCopyWith<$Res> {
  factory _$ResultCatDescriptionDBCopyWith(_ResultCatDescriptionDB value,
          $Res Function(_ResultCatDescriptionDB) then) =
      __$ResultCatDescriptionDBCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'cat_id') String catid, String description});
}

/// @nodoc
class __$ResultCatDescriptionDBCopyWithImpl<$Res>
    extends _$ResultCatDescriptionDBCopyWithImpl<$Res>
    implements _$ResultCatDescriptionDBCopyWith<$Res> {
  __$ResultCatDescriptionDBCopyWithImpl(_ResultCatDescriptionDB _value,
      $Res Function(_ResultCatDescriptionDB) _then)
      : super(_value, (v) => _then(v as _ResultCatDescriptionDB));

  @override
  _ResultCatDescriptionDB get _value => super._value as _ResultCatDescriptionDB;

  @override
  $Res call({
    Object? catid = freezed,
    Object? description = freezed,
  }) {
    return _then(_ResultCatDescriptionDB(
      catid: catid == freezed
          ? _value.catid
          : catid // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultCatDescriptionDB implements _ResultCatDescriptionDB {
  _$_ResultCatDescriptionDB(
      {@JsonKey(name: 'cat_id') required this.catid,
      required this.description});

  factory _$_ResultCatDescriptionDB.fromJson(Map<String, dynamic> json) =>
      _$$_ResultCatDescriptionDBFromJson(json);

  @override
  @JsonKey(name: 'cat_id')
  final String catid;
  @override
  final String description;

  @override
  String toString() {
    return 'ResultCatDescriptionDB(catid: $catid, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultCatDescriptionDB &&
            const DeepCollectionEquality().equals(other.catid, catid) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(catid),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ResultCatDescriptionDBCopyWith<_ResultCatDescriptionDB> get copyWith =>
      __$ResultCatDescriptionDBCopyWithImpl<_ResultCatDescriptionDB>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultCatDescriptionDBToJson(this);
  }
}

abstract class _ResultCatDescriptionDB implements ResultCatDescriptionDB {
  factory _ResultCatDescriptionDB(
      {@JsonKey(name: 'cat_id') required String catid,
      required String description}) = _$_ResultCatDescriptionDB;

  factory _ResultCatDescriptionDB.fromJson(Map<String, dynamic> json) =
      _$_ResultCatDescriptionDB.fromJson;

  @override
  @JsonKey(name: 'cat_id')
  String get catid;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ResultCatDescriptionDBCopyWith<_ResultCatDescriptionDB> get copyWith =>
      throw _privateConstructorUsedError;
}
