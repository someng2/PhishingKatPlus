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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatTypeState _$CatTypeStateFromJson(Map<String, dynamic> json) {
  return _CatTypeState.fromJson(json);
}

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
abstract class _$$_CatTypeStateCopyWith<$Res>
    implements $CatTypeStateCopyWith<$Res> {
  factory _$$_CatTypeStateCopyWith(
          _$_CatTypeState value, $Res Function(_$_CatTypeState) then) =
      __$$_CatTypeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ResultCatTypeDB> catTypeDB, bool isLoading});
}

/// @nodoc
class __$$_CatTypeStateCopyWithImpl<$Res>
    extends _$CatTypeStateCopyWithImpl<$Res>
    implements _$$_CatTypeStateCopyWith<$Res> {
  __$$_CatTypeStateCopyWithImpl(
      _$_CatTypeState _value, $Res Function(_$_CatTypeState) _then)
      : super(_value, (v) => _then(v as _$_CatTypeState));

  @override
  _$_CatTypeState get _value => super._value as _$_CatTypeState;

  @override
  $Res call({
    Object? catTypeDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_CatTypeState(
      catTypeDB: catTypeDB == freezed
          ? _value._catTypeDB
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
  _$_CatTypeState(
      {final List<ResultCatTypeDB> catTypeDB = const [],
      this.isLoading = false})
      : _catTypeDB = catTypeDB;

  factory _$_CatTypeState.fromJson(Map<String, dynamic> json) =>
      _$$_CatTypeStateFromJson(json);

  final List<ResultCatTypeDB> _catTypeDB;
  @override
  @JsonKey()
  List<ResultCatTypeDB> get catTypeDB {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catTypeDB);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CatTypeState(catTypeDB: $catTypeDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatTypeState &&
            const DeepCollectionEquality()
                .equals(other._catTypeDB, _catTypeDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_catTypeDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_CatTypeStateCopyWith<_$_CatTypeState> get copyWith =>
      __$$_CatTypeStateCopyWithImpl<_$_CatTypeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatTypeStateToJson(this);
  }
}

abstract class _CatTypeState implements CatTypeState {
  factory _CatTypeState(
      {final List<ResultCatTypeDB> catTypeDB,
      final bool isLoading}) = _$_CatTypeState;

  factory _CatTypeState.fromJson(Map<String, dynamic> json) =
      _$_CatTypeState.fromJson;

  @override
  List<ResultCatTypeDB> get catTypeDB => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatTypeStateCopyWith<_$_CatTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
