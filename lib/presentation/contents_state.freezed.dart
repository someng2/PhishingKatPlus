// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contents_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentsState _$ContentsStateFromJson(Map<String, dynamic> json) {
  return _ContentsState.fromJson(json);
}

/// @nodoc
mixin _$ContentsState {
  List<Contents> get contents => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentsStateCopyWith<ContentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsStateCopyWith<$Res> {
  factory $ContentsStateCopyWith(
          ContentsState value, $Res Function(ContentsState) then) =
      _$ContentsStateCopyWithImpl<$Res>;
  $Res call({List<Contents> contents, bool isLoading});
}

/// @nodoc
class _$ContentsStateCopyWithImpl<$Res>
    implements $ContentsStateCopyWith<$Res> {
  _$ContentsStateCopyWithImpl(this._value, this._then);

  final ContentsState _value;
  // ignore: unused_field
  final $Res Function(ContentsState) _then;

  @override
  $Res call({
    Object? contents = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Contents>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentsStateCopyWith<$Res>
    implements $ContentsStateCopyWith<$Res> {
  factory _$$_ContentsStateCopyWith(
          _$_ContentsState value, $Res Function(_$_ContentsState) then) =
      __$$_ContentsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Contents> contents, bool isLoading});
}

/// @nodoc
class __$$_ContentsStateCopyWithImpl<$Res>
    extends _$ContentsStateCopyWithImpl<$Res>
    implements _$$_ContentsStateCopyWith<$Res> {
  __$$_ContentsStateCopyWithImpl(
      _$_ContentsState _value, $Res Function(_$_ContentsState) _then)
      : super(_value, (v) => _then(v as _$_ContentsState));

  @override
  _$_ContentsState get _value => super._value as _$_ContentsState;

  @override
  $Res call({
    Object? contents = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ContentsState(
      contents: contents == freezed
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Contents>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentsState implements _ContentsState {
  _$_ContentsState(
      {final List<Contents> contents = const [], this.isLoading = false})
      : _contents = contents;

  factory _$_ContentsState.fromJson(Map<String, dynamic> json) =>
      _$$_ContentsStateFromJson(json);

  final List<Contents> _contents;
  @override
  @JsonKey()
  List<Contents> get contents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ContentsState(contents: $contents, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentsState &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contents),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ContentsStateCopyWith<_$_ContentsState> get copyWith =>
      __$$_ContentsStateCopyWithImpl<_$_ContentsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentsStateToJson(this);
  }
}

abstract class _ContentsState implements ContentsState {
  factory _ContentsState(
      {final List<Contents> contents, final bool isLoading}) = _$_ContentsState;

  factory _ContentsState.fromJson(Map<String, dynamic> json) =
      _$_ContentsState.fromJson;

  @override
  List<Contents> get contents => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContentsStateCopyWith<_$_ContentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
