// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appPageDB.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppPageDB _$AppPageDBFromJson(Map<String, dynamic> json) {
  return _AppPageDB.fromJson(json);
}

/// @nodoc
mixin _$AppPageDB {
  @JsonKey(name: 'ap_id')
  String get apid => throw _privateConstructorUsedError;
  String get widget => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppPageDBCopyWith<AppPageDB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPageDBCopyWith<$Res> {
  factory $AppPageDBCopyWith(AppPageDB value, $Res Function(AppPageDB) then) =
      _$AppPageDBCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'ap_id') String apid, String widget});
}

/// @nodoc
class _$AppPageDBCopyWithImpl<$Res> implements $AppPageDBCopyWith<$Res> {
  _$AppPageDBCopyWithImpl(this._value, this._then);

  final AppPageDB _value;
  // ignore: unused_field
  final $Res Function(AppPageDB) _then;

  @override
  $Res call({
    Object? apid = freezed,
    Object? widget = freezed,
  }) {
    return _then(_value.copyWith(
      apid: apid == freezed
          ? _value.apid
          : apid // ignore: cast_nullable_to_non_nullable
              as String,
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppPageDBCopyWith<$Res> implements $AppPageDBCopyWith<$Res> {
  factory _$$_AppPageDBCopyWith(
          _$_AppPageDB value, $Res Function(_$_AppPageDB) then) =
      __$$_AppPageDBCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'ap_id') String apid, String widget});
}

/// @nodoc
class __$$_AppPageDBCopyWithImpl<$Res> extends _$AppPageDBCopyWithImpl<$Res>
    implements _$$_AppPageDBCopyWith<$Res> {
  __$$_AppPageDBCopyWithImpl(
      _$_AppPageDB _value, $Res Function(_$_AppPageDB) _then)
      : super(_value, (v) => _then(v as _$_AppPageDB));

  @override
  _$_AppPageDB get _value => super._value as _$_AppPageDB;

  @override
  $Res call({
    Object? apid = freezed,
    Object? widget = freezed,
  }) {
    return _then(_$_AppPageDB(
      apid: apid == freezed
          ? _value.apid
          : apid // ignore: cast_nullable_to_non_nullable
              as String,
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppPageDB implements _AppPageDB {
  _$_AppPageDB(
      {@JsonKey(name: 'ap_id') required this.apid, required this.widget});

  factory _$_AppPageDB.fromJson(Map<String, dynamic> json) =>
      _$$_AppPageDBFromJson(json);

  @override
  @JsonKey(name: 'ap_id')
  final String apid;
  @override
  final String widget;

  @override
  String toString() {
    return 'AppPageDB(apid: $apid, widget: $widget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppPageDB &&
            const DeepCollectionEquality().equals(other.apid, apid) &&
            const DeepCollectionEquality().equals(other.widget, widget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apid),
      const DeepCollectionEquality().hash(widget));

  @JsonKey(ignore: true)
  @override
  _$$_AppPageDBCopyWith<_$_AppPageDB> get copyWith =>
      __$$_AppPageDBCopyWithImpl<_$_AppPageDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppPageDBToJson(this);
  }
}

abstract class _AppPageDB implements AppPageDB {
  factory _AppPageDB(
      {@JsonKey(name: 'ap_id') required final String apid,
      required final String widget}) = _$_AppPageDB;

  factory _AppPageDB.fromJson(Map<String, dynamic> json) =
      _$_AppPageDB.fromJson;

  @override
  @JsonKey(name: 'ap_id')
  String get apid => throw _privateConstructorUsedError;
  @override
  String get widget => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppPageDBCopyWith<_$_AppPageDB> get copyWith =>
      throw _privateConstructorUsedError;
}
