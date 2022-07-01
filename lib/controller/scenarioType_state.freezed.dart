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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScenarioTypeState _$ScenarioTypeStateFromJson(Map<String, dynamic> json) {
  return _ScenarioTypeState.fromJson(json);
}

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
abstract class _$$_ScenarioTypeStateCopyWith<$Res>
    implements $ScenarioTypeStateCopyWith<$Res> {
  factory _$$_ScenarioTypeStateCopyWith(_$_ScenarioTypeState value,
          $Res Function(_$_ScenarioTypeState) then) =
      __$$_ScenarioTypeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ScenarioTypeDB> scenarioTypeDB, bool isLoading});
}

/// @nodoc
class __$$_ScenarioTypeStateCopyWithImpl<$Res>
    extends _$ScenarioTypeStateCopyWithImpl<$Res>
    implements _$$_ScenarioTypeStateCopyWith<$Res> {
  __$$_ScenarioTypeStateCopyWithImpl(
      _$_ScenarioTypeState _value, $Res Function(_$_ScenarioTypeState) _then)
      : super(_value, (v) => _then(v as _$_ScenarioTypeState));

  @override
  _$_ScenarioTypeState get _value => super._value as _$_ScenarioTypeState;

  @override
  $Res call({
    Object? scenarioTypeDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ScenarioTypeState(
      scenarioTypeDB: scenarioTypeDB == freezed
          ? _value._scenarioTypeDB
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
      {final List<ScenarioTypeDB> scenarioTypeDB = const [],
      this.isLoading = false})
      : _scenarioTypeDB = scenarioTypeDB;

  factory _$_ScenarioTypeState.fromJson(Map<String, dynamic> json) =>
      _$$_ScenarioTypeStateFromJson(json);

  final List<ScenarioTypeDB> _scenarioTypeDB;
  @override
  @JsonKey()
  List<ScenarioTypeDB> get scenarioTypeDB {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scenarioTypeDB);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ScenarioTypeState(scenarioTypeDB: $scenarioTypeDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScenarioTypeState &&
            const DeepCollectionEquality()
                .equals(other._scenarioTypeDB, _scenarioTypeDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_scenarioTypeDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ScenarioTypeStateCopyWith<_$_ScenarioTypeState> get copyWith =>
      __$$_ScenarioTypeStateCopyWithImpl<_$_ScenarioTypeState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScenarioTypeStateToJson(this);
  }
}

abstract class _ScenarioTypeState implements ScenarioTypeState {
  factory _ScenarioTypeState(
      {final List<ScenarioTypeDB> scenarioTypeDB,
      final bool isLoading}) = _$_ScenarioTypeState;

  factory _ScenarioTypeState.fromJson(Map<String, dynamic> json) =
      _$_ScenarioTypeState.fromJson;

  @override
  List<ScenarioTypeDB> get scenarioTypeDB => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScenarioTypeStateCopyWith<_$_ScenarioTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
