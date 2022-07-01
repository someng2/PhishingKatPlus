// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appPage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppPageState _$AppPageStateFromJson(Map<String, dynamic> json) {
  return _AppPageState.fromJson(json);
}

/// @nodoc
mixin _$AppPageState {
  List<AppPageDB> get appPageDB => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppPageStateCopyWith<AppPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPageStateCopyWith<$Res> {
  factory $AppPageStateCopyWith(
          AppPageState value, $Res Function(AppPageState) then) =
      _$AppPageStateCopyWithImpl<$Res>;
  $Res call({List<AppPageDB> appPageDB, bool isLoading});
}

/// @nodoc
class _$AppPageStateCopyWithImpl<$Res> implements $AppPageStateCopyWith<$Res> {
  _$AppPageStateCopyWithImpl(this._value, this._then);

  final AppPageState _value;
  // ignore: unused_field
  final $Res Function(AppPageState) _then;

  @override
  $Res call({
    Object? appPageDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      appPageDB: appPageDB == freezed
          ? _value.appPageDB
          : appPageDB // ignore: cast_nullable_to_non_nullable
              as List<AppPageDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AppPageStateCopyWith<$Res>
    implements $AppPageStateCopyWith<$Res> {
  factory _$$_AppPageStateCopyWith(
          _$_AppPageState value, $Res Function(_$_AppPageState) then) =
      __$$_AppPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<AppPageDB> appPageDB, bool isLoading});
}

/// @nodoc
class __$$_AppPageStateCopyWithImpl<$Res>
    extends _$AppPageStateCopyWithImpl<$Res>
    implements _$$_AppPageStateCopyWith<$Res> {
  __$$_AppPageStateCopyWithImpl(
      _$_AppPageState _value, $Res Function(_$_AppPageState) _then)
      : super(_value, (v) => _then(v as _$_AppPageState));

  @override
  _$_AppPageState get _value => super._value as _$_AppPageState;

  @override
  $Res call({
    Object? appPageDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_AppPageState(
      appPageDB: appPageDB == freezed
          ? _value._appPageDB
          : appPageDB // ignore: cast_nullable_to_non_nullable
              as List<AppPageDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppPageState implements _AppPageState {
  _$_AppPageState(
      {final List<AppPageDB> appPageDB = const [], this.isLoading = false})
      : _appPageDB = appPageDB;

  factory _$_AppPageState.fromJson(Map<String, dynamic> json) =>
      _$$_AppPageStateFromJson(json);

  final List<AppPageDB> _appPageDB;
  @override
  @JsonKey()
  List<AppPageDB> get appPageDB {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appPageDB);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AppPageState(appPageDB: $appPageDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppPageState &&
            const DeepCollectionEquality()
                .equals(other._appPageDB, _appPageDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_appPageDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_AppPageStateCopyWith<_$_AppPageState> get copyWith =>
      __$$_AppPageStateCopyWithImpl<_$_AppPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppPageStateToJson(this);
  }
}

abstract class _AppPageState implements AppPageState {
  factory _AppPageState(
      {final List<AppPageDB> appPageDB,
      final bool isLoading}) = _$_AppPageState;

  factory _AppPageState.fromJson(Map<String, dynamic> json) =
      _$_AppPageState.fromJson;

  @override
  List<AppPageDB> get appPageDB => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppPageStateCopyWith<_$_AppPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
