// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pair_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PairState _$PairStateFromJson(Map<String, dynamic> json) {
  return _PairState.fromJson(json);
}

/// @nodoc
mixin _$PairState {
  List<PairDB> get pairDB => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PairStateCopyWith<PairState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairStateCopyWith<$Res> {
  factory $PairStateCopyWith(PairState value, $Res Function(PairState) then) =
      _$PairStateCopyWithImpl<$Res>;
  $Res call({List<PairDB> pairDB, bool isLoading});
}

/// @nodoc
class _$PairStateCopyWithImpl<$Res> implements $PairStateCopyWith<$Res> {
  _$PairStateCopyWithImpl(this._value, this._then);

  final PairState _value;
  // ignore: unused_field
  final $Res Function(PairState) _then;

  @override
  $Res call({
    Object? pairDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      pairDB: pairDB == freezed
          ? _value.pairDB
          : pairDB // ignore: cast_nullable_to_non_nullable
              as List<PairDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PairStateCopyWith<$Res> implements $PairStateCopyWith<$Res> {
  factory _$$_PairStateCopyWith(
          _$_PairState value, $Res Function(_$_PairState) then) =
      __$$_PairStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PairDB> pairDB, bool isLoading});
}

/// @nodoc
class __$$_PairStateCopyWithImpl<$Res> extends _$PairStateCopyWithImpl<$Res>
    implements _$$_PairStateCopyWith<$Res> {
  __$$_PairStateCopyWithImpl(
      _$_PairState _value, $Res Function(_$_PairState) _then)
      : super(_value, (v) => _then(v as _$_PairState));

  @override
  _$_PairState get _value => super._value as _$_PairState;

  @override
  $Res call({
    Object? pairDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_PairState(
      pairDB: pairDB == freezed
          ? _value._pairDB
          : pairDB // ignore: cast_nullable_to_non_nullable
              as List<PairDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PairState implements _PairState {
  _$_PairState({final List<PairDB> pairDB = const [], this.isLoading = false})
      : _pairDB = pairDB;

  factory _$_PairState.fromJson(Map<String, dynamic> json) =>
      _$$_PairStateFromJson(json);

  final List<PairDB> _pairDB;
  @override
  @JsonKey()
  List<PairDB> get pairDB {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pairDB);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PairState(pairDB: $pairDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PairState &&
            const DeepCollectionEquality().equals(other._pairDB, _pairDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pairDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_PairStateCopyWith<_$_PairState> get copyWith =>
      __$$_PairStateCopyWithImpl<_$_PairState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PairStateToJson(this);
  }
}

abstract class _PairState implements PairState {
  factory _PairState({final List<PairDB> pairDB, final bool isLoading}) =
      _$_PairState;

  factory _PairState.fromJson(Map<String, dynamic> json) =
      _$_PairState.fromJson;

  @override
  List<PairDB> get pairDB => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PairStateCopyWith<_$_PairState> get copyWith =>
      throw _privateConstructorUsedError;
}
