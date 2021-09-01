// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'complete_presenter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompletePresenterDataTearOff {
  const _$CompletePresenterDataTearOff();

  _CompletePresenterData call(
      {DateTime? startDate, DateTime? endDate, int? duration}) {
    return _CompletePresenterData(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
    );
  }
}

/// @nodoc
const $CompletePresenterData = _$CompletePresenterDataTearOff();

/// @nodoc
mixin _$CompletePresenterData {
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompletePresenterDataCopyWith<CompletePresenterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletePresenterDataCopyWith<$Res> {
  factory $CompletePresenterDataCopyWith(CompletePresenterData value,
          $Res Function(CompletePresenterData) then) =
      _$CompletePresenterDataCopyWithImpl<$Res>;
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class _$CompletePresenterDataCopyWithImpl<$Res>
    implements $CompletePresenterDataCopyWith<$Res> {
  _$CompletePresenterDataCopyWithImpl(this._value, this._then);

  final CompletePresenterData _value;
  // ignore: unused_field
  final $Res Function(CompletePresenterData) _then;

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
abstract class _$CompletePresenterDataCopyWith<$Res>
    implements $CompletePresenterDataCopyWith<$Res> {
  factory _$CompletePresenterDataCopyWith(_CompletePresenterData value,
          $Res Function(_CompletePresenterData) then) =
      __$CompletePresenterDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class __$CompletePresenterDataCopyWithImpl<$Res>
    extends _$CompletePresenterDataCopyWithImpl<$Res>
    implements _$CompletePresenterDataCopyWith<$Res> {
  __$CompletePresenterDataCopyWithImpl(_CompletePresenterData _value,
      $Res Function(_CompletePresenterData) _then)
      : super(_value, (v) => _then(v as _CompletePresenterData));

  @override
  _CompletePresenterData get _value => super._value as _CompletePresenterData;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
  }) {
    return _then(_CompletePresenterData(
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

class _$_CompletePresenterData extends _CompletePresenterData
    with DiagnosticableTreeMixin {
  const _$_CompletePresenterData({this.startDate, this.endDate, this.duration})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompletePresenterData(startDate: $startDate, endDate: $endDate, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompletePresenterData'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompletePresenterData &&
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
  _$CompletePresenterDataCopyWith<_CompletePresenterData> get copyWith =>
      __$CompletePresenterDataCopyWithImpl<_CompletePresenterData>(
          this, _$identity);
}

abstract class _CompletePresenterData extends CompletePresenterData {
  const factory _CompletePresenterData(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration}) = _$_CompletePresenterData;
  const _CompletePresenterData._() : super._();

  @override
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompletePresenterDataCopyWith<_CompletePresenterData> get copyWith =>
      throw _privateConstructorUsedError;
}
