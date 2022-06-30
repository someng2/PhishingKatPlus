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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScenarioState _$ScenarioStateFromJson(Map<String, dynamic> json) {
  return _ScenarioState.fromJson(json);
}

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
abstract class _$$_ScenarioStateCopyWith<$Res>
    implements $ScenarioStateCopyWith<$Res> {
  factory _$$_ScenarioStateCopyWith(
          _$_ScenarioState value, $Res Function(_$_ScenarioState) then) =
      __$$_ScenarioStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ScenarioDB> scenarioDB, bool isLoading});
}

/// @nodoc
class __$$_ScenarioStateCopyWithImpl<$Res>
    extends _$ScenarioStateCopyWithImpl<$Res>
    implements _$$_ScenarioStateCopyWith<$Res> {
  __$$_ScenarioStateCopyWithImpl(
      _$_ScenarioState _value, $Res Function(_$_ScenarioState) _then)
      : super(_value, (v) => _then(v as _$_ScenarioState));

  @override
  _$_ScenarioState get _value => super._value as _$_ScenarioState;

  @override
  $Res call({
    Object? scenarioDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ScenarioState(
      scenarioDB: scenarioDB == freezed
          ? _value._scenarioDB
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
  _$_ScenarioState(
      {final List<ScenarioDB> scenarioDB = const [], this.isLoading = false})
      : _scenarioDB = scenarioDB;

  factory _$_ScenarioState.fromJson(Map<String, dynamic> json) =>
      _$$_ScenarioStateFromJson(json);

  final List<ScenarioDB> _scenarioDB;
  @override
  @JsonKey()
  List<ScenarioDB> get scenarioDB {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scenarioDB);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ScenarioState(scenarioDB: $scenarioDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScenarioState &&
            const DeepCollectionEquality()
                .equals(other._scenarioDB, _scenarioDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_scenarioDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ScenarioStateCopyWith<_$_ScenarioState> get copyWith =>
      __$$_ScenarioStateCopyWithImpl<_$_ScenarioState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScenarioStateToJson(this);
  }
}

abstract class _ScenarioState implements ScenarioState {
  factory _ScenarioState(
      {final List<ScenarioDB> scenarioDB,
      final bool isLoading}) = _$_ScenarioState;

  factory _ScenarioState.fromJson(Map<String, dynamic> json) =
      _$_ScenarioState.fromJson;

  @override
  List<ScenarioDB> get scenarioDB => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScenarioStateCopyWith<_$_ScenarioState> get copyWith =>
      throw _privateConstructorUsedError;
}
