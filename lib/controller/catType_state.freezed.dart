// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catType_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatTypeState _$CatTypeStateFromJson(Map<String, dynamic> json) {
  return _CatTypeState.fromJson(json);
}

/// @nodoc
class _$CatTypeStateTearOff {
  const _$CatTypeStateTearOff();

  _CatTypeState call(
      {List<ResultCatTypeDB> catTypeDB = const [], bool isLoading = false}) {
    return _CatTypeState(
      catTypeDB: catTypeDB,
      isLoading: isLoading,
    );
  }

  CatTypeState fromJson(Map<String, Object?> json) {
    return CatTypeState.fromJson(json);
  }
}

/// @nodoc
const $CatTypeState = _$CatTypeStateTearOff();

/// @nodoc
mixin _$CatTypeState {
  List<ResultCatTypeDB> get catTypeDB => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatTypeStateCopyWith<CatTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatTypeStateCopyWith<$Res> {
  factory $CatTypeStateCopyWith(
          CatTypeState value, $Res Function(CatTypeState) then) =
      _$CatTypeStateCopyWithImpl<$Res>;
  $Res call({List<ResultCatTypeDB> catTypeDB, bool isLoading});
}

/// @nodoc
class _$CatTypeStateCopyWithImpl<$Res> implements $CatTypeStateCopyWith<$Res> {
  _$CatTypeStateCopyWithImpl(this._value, this._then);

  final CatTypeState _value;
  // ignore: unused_field
  final $Res Function(CatTypeState) _then;

  @override
  $Res call({
    Object? catTypeDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      catTypeDB: catTypeDB == freezed
          ? _value.catTypeDB
          : catTypeDB // ignore: cast_nullable_to_non_nullable
              as List<ResultCatTypeDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CatTypeStateCopyWith<$Res>
    implements $CatTypeStateCopyWith<$Res> {
  factory _$CatTypeStateCopyWith(
          _CatTypeState value, $Res Function(_CatTypeState) then) =
      __$CatTypeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ResultCatTypeDB> catTypeDB, bool isLoading});
}

/// @nodoc
class __$CatTypeStateCopyWithImpl<$Res> extends _$CatTypeStateCopyWithImpl<$Res>
    implements _$CatTypeStateCopyWith<$Res> {
  __$CatTypeStateCopyWithImpl(
      _CatTypeState _value, $Res Function(_CatTypeState) _then)
      : super(_value, (v) => _then(v as _CatTypeState));

  @override
  _CatTypeState get _value => super._value as _CatTypeState;

  @override
  $Res call({
    Object? catTypeDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_CatTypeState(
      catTypeDB: catTypeDB == freezed
          ? _value.catTypeDB
          : catTypeDB // ignore: cast_nullable_to_non_nullable
              as List<ResultCatTypeDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatTypeState implements _CatTypeState {
  _$_CatTypeState({this.catTypeDB = const [], this.isLoading = false});

  factory _$_CatTypeState.fromJson(Map<String, dynamic> json) =>
      _$$_CatTypeStateFromJson(json);

  @JsonKey()
  @override
  final List<ResultCatTypeDB> catTypeDB;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CatTypeState(catTypeDB: $catTypeDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatTypeState &&
            const DeepCollectionEquality().equals(other.catTypeDB, catTypeDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(catTypeDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$CatTypeStateCopyWith<_CatTypeState> get copyWith =>
      __$CatTypeStateCopyWithImpl<_CatTypeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatTypeStateToJson(this);
  }
}

abstract class _CatTypeState implements CatTypeState {
  factory _CatTypeState({List<ResultCatTypeDB> catTypeDB, bool isLoading}) =
      _$_CatTypeState;

  factory _CatTypeState.fromJson(Map<String, dynamic> json) =
      _$_CatTypeState.fromJson;

  @override
  List<ResultCatTypeDB> get catTypeDB;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$CatTypeStateCopyWith<_CatTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
