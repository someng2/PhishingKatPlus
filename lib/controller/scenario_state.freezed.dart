// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scenario_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScenarioState _$ScenarioStateFromJson(Map<String, dynamic> json) {
  return _ScenarioState.fromJson(json);
}

/// @nodoc
class _$ScenarioStateTearOff {
  const _$ScenarioStateTearOff();

  _ScenarioState call(
      {List<ScenarioDB> scenarioDB = const [], bool isLoading = false}) {
    return _ScenarioState(
      scenarioDB: scenarioDB,
      isLoading: isLoading,
    );
  }

  ScenarioState fromJson(Map<String, Object?> json) {
    return ScenarioState.fromJson(json);
  }
}

/// @nodoc
const $ScenarioState = _$ScenarioStateTearOff();

/// @nodoc
mixin _$ScenarioState {
  List<ScenarioDB> get scenarioDB => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScenarioStateCopyWith<ScenarioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioStateCopyWith<$Res> {
  factory $ScenarioStateCopyWith(
          ScenarioState value, $Res Function(ScenarioState) then) =
      _$ScenarioStateCopyWithImpl<$Res>;
  $Res call({List<ScenarioDB> scenarioDB, bool isLoading});
}

/// @nodoc
class _$ScenarioStateCopyWithImpl<$Res>
    implements $ScenarioStateCopyWith<$Res> {
  _$ScenarioStateCopyWithImpl(this._value, this._then);

  final ScenarioState _value;
  // ignore: unused_field
  final $Res Function(ScenarioState) _then;

  @override
  $Res call({
    Object? scenarioDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      scenarioDB: scenarioDB == freezed
          ? _value.scenarioDB
          : scenarioDB // ignore: cast_nullable_to_non_nullable
              as List<ScenarioDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ScenarioStateCopyWith<$Res>
    implements $ScenarioStateCopyWith<$Res> {
  factory _$ScenarioStateCopyWith(
          _ScenarioState value, $Res Function(_ScenarioState) then) =
      __$ScenarioStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ScenarioDB> scenarioDB, bool isLoading});
}

/// @nodoc
class __$ScenarioStateCopyWithImpl<$Res>
    extends _$ScenarioStateCopyWithImpl<$Res>
    implements _$ScenarioStateCopyWith<$Res> {
  __$ScenarioStateCopyWithImpl(
      _ScenarioState _value, $Res Function(_ScenarioState) _then)
      : super(_value, (v) => _then(v as _ScenarioState));

  @override
  _ScenarioState get _value => super._value as _ScenarioState;

  @override
  $Res call({
    Object? scenarioDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ScenarioState(
      scenarioDB: scenarioDB == freezed
          ? _value.scenarioDB
          : scenarioDB // ignore: cast_nullable_to_non_nullable
              as List<ScenarioDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScenarioState implements _ScenarioState {
  _$_ScenarioState({this.scenarioDB = const [], this.isLoading = false});

  factory _$_ScenarioState.fromJson(Map<String, dynamic> json) =>
      _$$_ScenarioStateFromJson(json);

  @JsonKey()
  @override
  final List<ScenarioDB> scenarioDB;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ScenarioState(scenarioDB: $scenarioDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScenarioState &&
            const DeepCollectionEquality()
                .equals(other.scenarioDB, scenarioDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scenarioDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$ScenarioStateCopyWith<_ScenarioState> get copyWith =>
      __$ScenarioStateCopyWithImpl<_ScenarioState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScenarioStateToJson(this);
  }
}

abstract class _ScenarioState implements ScenarioState {
  factory _ScenarioState({List<ScenarioDB> scenarioDB, bool isLoading}) =
      _$_ScenarioState;

  factory _ScenarioState.fromJson(Map<String, dynamic> json) =
      _$_ScenarioState.fromJson;

  @override
  List<ScenarioDB> get scenarioDB;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ScenarioStateCopyWith<_ScenarioState> get copyWith =>
      throw _privateConstructorUsedError;
}
