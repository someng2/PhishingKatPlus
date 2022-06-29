// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scenarioType_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScenarioTypeState _$ScenarioTypeStateFromJson(Map<String, dynamic> json) {
  return _ScenarioTypeState.fromJson(json);
}

/// @nodoc
class _$ScenarioTypeStateTearOff {
  const _$ScenarioTypeStateTearOff();

  _ScenarioTypeState call(
      {List<ScenarioTypeDB> scenarioTypeDB = const [],
      bool isLoading = false}) {
    return _ScenarioTypeState(
      scenarioTypeDB: scenarioTypeDB,
      isLoading: isLoading,
    );
  }

  ScenarioTypeState fromJson(Map<String, Object?> json) {
    return ScenarioTypeState.fromJson(json);
  }
}

/// @nodoc
const $ScenarioTypeState = _$ScenarioTypeStateTearOff();

/// @nodoc
mixin _$ScenarioTypeState {
  List<ScenarioTypeDB> get scenarioTypeDB => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScenarioTypeStateCopyWith<ScenarioTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioTypeStateCopyWith<$Res> {
  factory $ScenarioTypeStateCopyWith(
          ScenarioTypeState value, $Res Function(ScenarioTypeState) then) =
      _$ScenarioTypeStateCopyWithImpl<$Res>;
  $Res call({List<ScenarioTypeDB> scenarioTypeDB, bool isLoading});
}

/// @nodoc
class _$ScenarioTypeStateCopyWithImpl<$Res>
    implements $ScenarioTypeStateCopyWith<$Res> {
  _$ScenarioTypeStateCopyWithImpl(this._value, this._then);

  final ScenarioTypeState _value;
  // ignore: unused_field
  final $Res Function(ScenarioTypeState) _then;

  @override
  $Res call({
    Object? scenarioTypeDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      scenarioTypeDB: scenarioTypeDB == freezed
          ? _value.scenarioTypeDB
          : scenarioTypeDB // ignore: cast_nullable_to_non_nullable
              as List<ScenarioTypeDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ScenarioTypeStateCopyWith<$Res>
    implements $ScenarioTypeStateCopyWith<$Res> {
  factory _$ScenarioTypeStateCopyWith(
          _ScenarioTypeState value, $Res Function(_ScenarioTypeState) then) =
      __$ScenarioTypeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ScenarioTypeDB> scenarioTypeDB, bool isLoading});
}

/// @nodoc
class __$ScenarioTypeStateCopyWithImpl<$Res>
    extends _$ScenarioTypeStateCopyWithImpl<$Res>
    implements _$ScenarioTypeStateCopyWith<$Res> {
  __$ScenarioTypeStateCopyWithImpl(
      _ScenarioTypeState _value, $Res Function(_ScenarioTypeState) _then)
      : super(_value, (v) => _then(v as _ScenarioTypeState));

  @override
  _ScenarioTypeState get _value => super._value as _ScenarioTypeState;

  @override
  $Res call({
    Object? scenarioTypeDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ScenarioTypeState(
      scenarioTypeDB: scenarioTypeDB == freezed
          ? _value.scenarioTypeDB
          : scenarioTypeDB // ignore: cast_nullable_to_non_nullable
              as List<ScenarioTypeDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScenarioTypeState implements _ScenarioTypeState {
  _$_ScenarioTypeState(
      {this.scenarioTypeDB = const [], this.isLoading = false});

  factory _$_ScenarioTypeState.fromJson(Map<String, dynamic> json) =>
      _$$_ScenarioTypeStateFromJson(json);

  @JsonKey()
  @override
  final List<ScenarioTypeDB> scenarioTypeDB;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ScenarioTypeState(scenarioTypeDB: $scenarioTypeDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScenarioTypeState &&
            const DeepCollectionEquality()
                .equals(other.scenarioTypeDB, scenarioTypeDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scenarioTypeDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$ScenarioTypeStateCopyWith<_ScenarioTypeState> get copyWith =>
      __$ScenarioTypeStateCopyWithImpl<_ScenarioTypeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScenarioTypeStateToJson(this);
  }
}

abstract class _ScenarioTypeState implements ScenarioTypeState {
  factory _ScenarioTypeState(
      {List<ScenarioTypeDB> scenarioTypeDB,
      bool isLoading}) = _$_ScenarioTypeState;

  factory _ScenarioTypeState.fromJson(Map<String, dynamic> json) =
      _$_ScenarioTypeState.fromJson;

  @override
  List<ScenarioTypeDB> get scenarioTypeDB;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ScenarioTypeStateCopyWith<_ScenarioTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
