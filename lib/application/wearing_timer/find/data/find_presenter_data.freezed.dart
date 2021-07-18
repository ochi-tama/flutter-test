// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_presenter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FindPresenterDataTearOff {
  const _$FindPresenterDataTearOff();

  _FindPresenterData call(
      {DateTime? startDate, DateTime? endDate, int? duration}) {
    return _FindPresenterData(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
    );
  }
}

/// @nodoc
const $FindPresenterData = _$FindPresenterDataTearOff();

/// @nodoc
mixin _$FindPresenterData {
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FindPresenterDataCopyWith<FindPresenterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindPresenterDataCopyWith<$Res> {
  factory $FindPresenterDataCopyWith(
          FindPresenterData value, $Res Function(FindPresenterData) then) =
      _$FindPresenterDataCopyWithImpl<$Res>;
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class _$FindPresenterDataCopyWithImpl<$Res>
    implements $FindPresenterDataCopyWith<$Res> {
  _$FindPresenterDataCopyWithImpl(this._value, this._then);

  final FindPresenterData _value;
  // ignore: unused_field
  final $Res Function(FindPresenterData) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FindPresenterDataCopyWith<$Res>
    implements $FindPresenterDataCopyWith<$Res> {
  factory _$FindPresenterDataCopyWith(
          _FindPresenterData value, $Res Function(_FindPresenterData) then) =
      __$FindPresenterDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class __$FindPresenterDataCopyWithImpl<$Res>
    extends _$FindPresenterDataCopyWithImpl<$Res>
    implements _$FindPresenterDataCopyWith<$Res> {
  __$FindPresenterDataCopyWithImpl(
      _FindPresenterData _value, $Res Function(_FindPresenterData) _then)
      : super(_value, (v) => _then(v as _FindPresenterData));

  @override
  _FindPresenterData get _value => super._value as _FindPresenterData;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
  }) {
    return _then(_FindPresenterData(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FindPresenterData extends _FindPresenterData
    with DiagnosticableTreeMixin {
  const _$_FindPresenterData({this.startDate, this.endDate, this.duration})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindPresenterData(startDate: $startDate, endDate: $endDate, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindPresenterData'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindPresenterData &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$FindPresenterDataCopyWith<_FindPresenterData> get copyWith =>
      __$FindPresenterDataCopyWithImpl<_FindPresenterData>(this, _$identity);
}

abstract class _FindPresenterData extends FindPresenterData {
  const factory _FindPresenterData(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration}) = _$_FindPresenterData;
  const _FindPresenterData._() : super._();

  @override
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindPresenterDataCopyWith<_FindPresenterData> get copyWith =>
      throw _privateConstructorUsedError;
}
