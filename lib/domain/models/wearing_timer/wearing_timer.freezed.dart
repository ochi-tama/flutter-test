// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wearing_timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WearingTimerTearOff {
  const _$WearingTimerTearOff();

  _WearingTimer call(
      {required DateTime startDate,
      required int duration,
      DateTime? endDate,
      DateTime? actualEndDate}) {
    return _WearingTimer(
      startDate: startDate,
      duration: duration,
      endDate: endDate,
      actualEndDate: actualEndDate,
    );
  }
}

/// @nodoc
const $WearingTimer = _$WearingTimerTearOff();

/// @nodoc
mixin _$WearingTimer {
  DateTime get startDate => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  DateTime? get actualEndDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WearingTimerCopyWith<WearingTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WearingTimerCopyWith<$Res> {
  factory $WearingTimerCopyWith(
          WearingTimer value, $Res Function(WearingTimer) then) =
      _$WearingTimerCopyWithImpl<$Res>;
  $Res call(
      {DateTime startDate,
      int duration,
      DateTime? endDate,
      DateTime? actualEndDate});
}

/// @nodoc
class _$WearingTimerCopyWithImpl<$Res> implements $WearingTimerCopyWith<$Res> {
  _$WearingTimerCopyWithImpl(this._value, this._then);

  final WearingTimer _value;
  // ignore: unused_field
  final $Res Function(WearingTimer) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? duration = freezed,
    Object? endDate = freezed,
    Object? actualEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndDate: actualEndDate == freezed
          ? _value.actualEndDate
          : actualEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$WearingTimerCopyWith<$Res>
    implements $WearingTimerCopyWith<$Res> {
  factory _$WearingTimerCopyWith(
          _WearingTimer value, $Res Function(_WearingTimer) then) =
      __$WearingTimerCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime startDate,
      int duration,
      DateTime? endDate,
      DateTime? actualEndDate});
}

/// @nodoc
class __$WearingTimerCopyWithImpl<$Res> extends _$WearingTimerCopyWithImpl<$Res>
    implements _$WearingTimerCopyWith<$Res> {
  __$WearingTimerCopyWithImpl(
      _WearingTimer _value, $Res Function(_WearingTimer) _then)
      : super(_value, (v) => _then(v as _WearingTimer));

  @override
  _WearingTimer get _value => super._value as _WearingTimer;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? duration = freezed,
    Object? endDate = freezed,
    Object? actualEndDate = freezed,
  }) {
    return _then(_WearingTimer(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndDate: actualEndDate == freezed
          ? _value.actualEndDate
          : actualEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_WearingTimer extends _WearingTimer with DiagnosticableTreeMixin {
  const _$_WearingTimer(
      {required this.startDate,
      required this.duration,
      this.endDate,
      this.actualEndDate})
      : super._();

  @override
  final DateTime startDate;
  @override
  final int duration;
  @override
  final DateTime? endDate;
  @override
  final DateTime? actualEndDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WearingTimer(startDate: $startDate, duration: $duration, endDate: $endDate, actualEndDate: $actualEndDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WearingTimer'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('actualEndDate', actualEndDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WearingTimer &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.actualEndDate, actualEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.actualEndDate, actualEndDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(actualEndDate);

  @JsonKey(ignore: true)
  @override
  _$WearingTimerCopyWith<_WearingTimer> get copyWith =>
      __$WearingTimerCopyWithImpl<_WearingTimer>(this, _$identity);
}

abstract class _WearingTimer extends WearingTimer {
  const factory _WearingTimer(
      {required DateTime startDate,
      required int duration,
      DateTime? endDate,
      DateTime? actualEndDate}) = _$_WearingTimer;
  const _WearingTimer._() : super._();

  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  DateTime? get actualEndDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WearingTimerCopyWith<_WearingTimer> get copyWith =>
      throw _privateConstructorUsedError;
}
