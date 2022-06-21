// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contents_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentsEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() query2,
    required TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)
        insert2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? query2,
    TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)?
        insert2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? query2,
    TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)?
        insert2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Query<T> value) query2,
    required TResult Function(Insert<T> value) insert2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Query<T> value)? query2,
    TResult Function(Insert<T> value)? insert2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Query<T> value)? query2,
    TResult Function(Insert<T> value)? insert2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsEventCopyWith<T, $Res> {
  factory $ContentsEventCopyWith(
          ContentsEvent<T> value, $Res Function(ContentsEvent<T>) then) =
      _$ContentsEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ContentsEventCopyWithImpl<T, $Res>
    implements $ContentsEventCopyWith<T, $Res> {
  _$ContentsEventCopyWithImpl(this._value, this._then);

  final ContentsEvent<T> _value;
  // ignore: unused_field
  final $Res Function(ContentsEvent<T>) _then;
}

/// @nodoc
abstract class _$$QueryCopyWith<T, $Res> {
  factory _$$QueryCopyWith(_$Query<T> value, $Res Function(_$Query<T>) then) =
      __$$QueryCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$QueryCopyWithImpl<T, $Res>
    extends _$ContentsEventCopyWithImpl<T, $Res>
    implements _$$QueryCopyWith<T, $Res> {
  __$$QueryCopyWithImpl(_$Query<T> _value, $Res Function(_$Query<T>) _then)
      : super(_value, (v) => _then(v as _$Query<T>));

  @override
  _$Query<T> get _value => super._value as _$Query<T>;
}

/// @nodoc

class _$Query<T> implements Query<T> {
  const _$Query();

  @override
  String toString() {
    return 'ContentsEvent<$T>.query2()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Query<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() query2,
    required TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)
        insert2,
  }) {
    return query2();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? query2,
    TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)?
        insert2,
  }) {
    return query2?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? query2,
    TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)?
        insert2,
    required TResult orElse(),
  }) {
    if (query2 != null) {
      return query2();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Query<T> value) query2,
    required TResult Function(Insert<T> value) insert2,
  }) {
    return query2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Query<T> value)? query2,
    TResult Function(Insert<T> value)? insert2,
  }) {
    return query2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Query<T> value)? query2,
    TResult Function(Insert<T> value)? insert2,
    required TResult orElse(),
  }) {
    if (query2 != null) {
      return query2(this);
    }
    return orElse();
  }
}

abstract class Query<T> implements ContentsEvent<T> {
  const factory Query() = _$Query<T>;
}

/// @nodoc
abstract class _$$InsertCopyWith<T, $Res> {
  factory _$$InsertCopyWith(
          _$Insert<T> value, $Res Function(_$Insert<T>) then) =
      __$$InsertCopyWithImpl<T, $Res>;
  $Res call(
      {String ac_id,
      String aid,
      String sid,
      int order,
      String c_type,
      String contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date});
}

/// @nodoc
class __$$InsertCopyWithImpl<T, $Res>
    extends _$ContentsEventCopyWithImpl<T, $Res>
    implements _$$InsertCopyWith<T, $Res> {
  __$$InsertCopyWithImpl(_$Insert<T> _value, $Res Function(_$Insert<T>) _then)
      : super(_value, (v) => _then(v as _$Insert<T>));

  @override
  _$Insert<T> get _value => super._value as _$Insert<T>;

  @override
  $Res call({
    Object? ac_id = freezed,
    Object? aid = freezed,
    Object? sid = freezed,
    Object? order = freezed,
    Object? c_type = freezed,
    Object? contents = freezed,
    Object? hasNextAction = freezed,
    Object? reg_date = freezed,
    Object? mod_date = freezed,
  }) {
    return _then(_$Insert<T>(
      ac_id == freezed
          ? _value.ac_id
          : ac_id // ignore: cast_nullable_to_non_nullable
              as String,
      aid == freezed
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as String,
      sid == freezed
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      c_type == freezed
          ? _value.c_type
          : c_type // ignore: cast_nullable_to_non_nullable
              as String,
      contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      hasNextAction == freezed
          ? _value.hasNextAction
          : hasNextAction // ignore: cast_nullable_to_non_nullable
              as int,
      reg_date == freezed
          ? _value.reg_date
          : reg_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mod_date == freezed
          ? _value.mod_date
          : mod_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Insert<T> implements Insert<T> {
  const _$Insert(this.ac_id, this.aid, this.sid, this.order, this.c_type,
      this.contents, this.hasNextAction, this.reg_date, this.mod_date);

  @override
  final String ac_id;
  @override
  final String aid;
  @override
  final String sid;
  @override
  final int order;
  @override
  final String c_type;
  @override
  final String contents;
  @override
  final int hasNextAction;
  @override
  final DateTime reg_date;
  @override
  final DateTime mod_date;

  @override
  String toString() {
    return 'ContentsEvent<$T>.insert2(ac_id: $ac_id, aid: $aid, sid: $sid, order: $order, c_type: $c_type, contents: $contents, hasNextAction: $hasNextAction, reg_date: $reg_date, mod_date: $mod_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Insert<T> &&
            const DeepCollectionEquality().equals(other.ac_id, ac_id) &&
            const DeepCollectionEquality().equals(other.aid, aid) &&
            const DeepCollectionEquality().equals(other.sid, sid) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.c_type, c_type) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality()
                .equals(other.hasNextAction, hasNextAction) &&
            const DeepCollectionEquality().equals(other.reg_date, reg_date) &&
            const DeepCollectionEquality().equals(other.mod_date, mod_date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ac_id),
      const DeepCollectionEquality().hash(aid),
      const DeepCollectionEquality().hash(sid),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(c_type),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(hasNextAction),
      const DeepCollectionEquality().hash(reg_date),
      const DeepCollectionEquality().hash(mod_date));

  @JsonKey(ignore: true)
  @override
  _$$InsertCopyWith<T, _$Insert<T>> get copyWith =>
      __$$InsertCopyWithImpl<T, _$Insert<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() query2,
    required TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)
        insert2,
  }) {
    return insert2(ac_id, aid, sid, order, c_type, contents, hasNextAction,
        reg_date, mod_date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? query2,
    TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)?
        insert2,
  }) {
    return insert2?.call(ac_id, aid, sid, order, c_type, contents,
        hasNextAction, reg_date, mod_date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? query2,
    TResult Function(
            String ac_id,
            String aid,
            String sid,
            int order,
            String c_type,
            String contents,
            int hasNextAction,
            DateTime reg_date,
            DateTime mod_date)?
        insert2,
    required TResult orElse(),
  }) {
    if (insert2 != null) {
      return insert2(ac_id, aid, sid, order, c_type, contents, hasNextAction,
          reg_date, mod_date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Query<T> value) query2,
    required TResult Function(Insert<T> value) insert2,
  }) {
    return insert2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Query<T> value)? query2,
    TResult Function(Insert<T> value)? insert2,
  }) {
    return insert2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Query<T> value)? query2,
    TResult Function(Insert<T> value)? insert2,
    required TResult orElse(),
  }) {
    if (insert2 != null) {
      return insert2(this);
    }
    return orElse();
  }
}

abstract class Insert<T> implements ContentsEvent<T> {
  const factory Insert(
      final String ac_id,
      final String aid,
      final String sid,
      final int order,
      final String c_type,
      final String contents,
      final int hasNextAction,
      final DateTime reg_date,
      final DateTime mod_date) = _$Insert<T>;

  String get ac_id => throw _privateConstructorUsedError;
  String get aid => throw _privateConstructorUsedError;
  String get sid => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get c_type => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  int get hasNextAction => throw _privateConstructorUsedError;
  DateTime get reg_date => throw _privateConstructorUsedError;
  DateTime get mod_date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InsertCopyWith<T, _$Insert<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
