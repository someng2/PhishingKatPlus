// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appContents_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppContentsState _$AppContentsStateFromJson(Map<String, dynamic> json) {
  return _AppContentsState.fromJson(json);
}

/// @nodoc
mixin _$AppContentsState {
  List<AppContentsDB> get appContentsDB => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppContentsStateCopyWith<AppContentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppContentsStateCopyWith<$Res> {
  factory $AppContentsStateCopyWith(
          AppContentsState value, $Res Function(AppContentsState) then) =
      _$AppContentsStateCopyWithImpl<$Res>;
  $Res call({List<AppContentsDB> appContentsDB, bool isLoading});
}

/// @nodoc
class _$AppContentsStateCopyWithImpl<$Res>
    implements $AppContentsStateCopyWith<$Res> {
  _$AppContentsStateCopyWithImpl(this._value, this._then);

  final AppContentsState _value;
  // ignore: unused_field
  final $Res Function(AppContentsState) _then;

  @override
  $Res call({
    Object? appContentsDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      appContentsDB: appContentsDB == freezed
          ? _value.appContentsDB
          : appContentsDB // ignore: cast_nullable_to_non_nullable
              as List<AppContentsDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AppContentsStateCopyWith<$Res>
    implements $AppContentsStateCopyWith<$Res> {
  factory _$$_AppContentsStateCopyWith(
          _$_AppContentsState value, $Res Function(_$_AppContentsState) then) =
      __$$_AppContentsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<AppContentsDB> appContentsDB, bool isLoading});
}

/// @nodoc
class __$$_AppContentsStateCopyWithImpl<$Res>
    extends _$AppContentsStateCopyWithImpl<$Res>
    implements _$$_AppContentsStateCopyWith<$Res> {
  __$$_AppContentsStateCopyWithImpl(
      _$_AppContentsState _value, $Res Function(_$_AppContentsState) _then)
      : super(_value, (v) => _then(v as _$_AppContentsState));

  @override
  _$_AppContentsState get _value => super._value as _$_AppContentsState;

  @override
  $Res call({
    Object? appContentsDB = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_AppContentsState(
      appContentsDB: appContentsDB == freezed
          ? _value._appContentsDB
          : appContentsDB // ignore: cast_nullable_to_non_nullable
              as List<AppContentsDB>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppContentsState implements _AppContentsState {
  _$_AppContentsState(
      {final List<AppContentsDB> appContentsDB = const [],
      this.isLoading = false})
      : _appContentsDB = appContentsDB;

  factory _$_AppContentsState.fromJson(Map<String, dynamic> json) =>
      _$$_AppContentsStateFromJson(json);

  final List<AppContentsDB> _appContentsDB;
  @override
  @JsonKey()
  List<AppContentsDB> get appContentsDB {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appContentsDB);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AppContentsState(appContentsDB: $appContentsDB, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppContentsState &&
            const DeepCollectionEquality()
                .equals(other._appContentsDB, _appContentsDB) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_appContentsDB),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_AppContentsStateCopyWith<_$_AppContentsState> get copyWith =>
      __$$_AppContentsStateCopyWithImpl<_$_AppContentsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppContentsStateToJson(this);
  }
}

abstract class _AppContentsState implements AppContentsState {
  factory _AppContentsState(
      {final List<AppContentsDB> appContentsDB,
      final bool isLoading}) = _$_AppContentsState;

  factory _AppContentsState.fromJson(Map<String, dynamic> json) =
      _$_AppContentsState.fromJson;

  @override
  List<AppContentsDB> get appContentsDB => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppContentsStateCopyWith<_$_AppContentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
