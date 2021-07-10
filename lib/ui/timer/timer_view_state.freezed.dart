// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timer_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerViewStateTearOff {
  const _$TimerViewStateTearOff();

  _TimerViewState call(
      {DateTime? startDate, DateTime? endDate, int? duration = 14}) {
    return _TimerViewState(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
    );
  }

  TimewViewStateInitial initial({int? duration = 14}) {
    return TimewViewStateInitial(
      duration: duration,
    );
  }

  TimerViewStateLoading loading({int? duration = 14}) {
    return TimerViewStateLoading(
      duration: duration,
    );
  }

  TimerViewStateDurationSet durationSet({int? duration = 14}) {
    return TimerViewStateDurationSet(
      duration: duration,
    );
  }

  TimerViewStateTimerActivated timerActivated(
      {DateTime? startDate, DateTime? endDate, int? duration = 14}) {
    return TimerViewStateTimerActivated(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
    );
  }

  TimerViewStateError error(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration = 14,
      String? error}) {
    return TimerViewStateError(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
      error: error,
    );
  }
}

/// @nodoc
const $TimerViewState = _$TimerViewStateTearOff();

/// @nodoc
mixin _$TimerViewState {
  int? get duration => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)
        $default, {
    required TResult Function(int? duration) initial,
    required TResult Function(int? duration) loading,
    required TResult Function(int? duration) durationSet,
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? duration)
        timerActivated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, String? error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        $default, {
    TResult Function(int? duration)? initial,
    TResult Function(int? duration)? loading,
    TResult Function(int? duration)? durationSet,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        timerActivated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            String? error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimerViewState value) $default, {
    required TResult Function(TimewViewStateInitial value) initial,
    required TResult Function(TimerViewStateLoading value) loading,
    required TResult Function(TimerViewStateDurationSet value) durationSet,
    required TResult Function(TimerViewStateTimerActivated value)
        timerActivated,
    required TResult Function(TimerViewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateTimerActivated value)? timerActivated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerViewStateCopyWith<TimerViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateCopyWith(
          TimerViewState value, $Res Function(TimerViewState) then) =
      _$TimerViewStateCopyWithImpl<$Res>;
  $Res call({int? duration});
}

/// @nodoc
class _$TimerViewStateCopyWithImpl<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  _$TimerViewStateCopyWithImpl(this._value, this._then);

  final TimerViewState _value;
  // ignore: unused_field
  final $Res Function(TimerViewState) _then;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TimerViewStateCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory _$TimerViewStateCopyWith(
          _TimerViewState value, $Res Function(_TimerViewState) then) =
      __$TimerViewStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class __$TimerViewStateCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements _$TimerViewStateCopyWith<$Res> {
  __$TimerViewStateCopyWithImpl(
      _TimerViewState _value, $Res Function(_TimerViewState) _then)
      : super(_value, (v) => _then(v as _TimerViewState));

  @override
  _TimerViewState get _value => super._value as _TimerViewState;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
  }) {
    return _then(_TimerViewState(
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

class _$_TimerViewState extends _TimerViewState with DiagnosticableTreeMixin {
  _$_TimerViewState({this.startDate, this.endDate, this.duration = 14})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @JsonKey(defaultValue: 14)
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState(startDate: $startDate, endDate: $endDate, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerViewState &&
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
  _$TimerViewStateCopyWith<_TimerViewState> get copyWith =>
      __$TimerViewStateCopyWithImpl<_TimerViewState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)
        $default, {
    required TResult Function(int? duration) initial,
    required TResult Function(int? duration) loading,
    required TResult Function(int? duration) durationSet,
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? duration)
        timerActivated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, String? error)
        error,
  }) {
    return $default(startDate, endDate, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        $default, {
    TResult Function(int? duration)? initial,
    TResult Function(int? duration)? loading,
    TResult Function(int? duration)? durationSet,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        timerActivated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            String? error)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(startDate, endDate, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimerViewState value) $default, {
    required TResult Function(TimewViewStateInitial value) initial,
    required TResult Function(TimerViewStateLoading value) loading,
    required TResult Function(TimerViewStateDurationSet value) durationSet,
    required TResult Function(TimerViewStateTimerActivated value)
        timerActivated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateTimerActivated value)? timerActivated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TimerViewState extends TimerViewState {
  factory _TimerViewState(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration}) = _$_TimerViewState;
  _TimerViewState._() : super._();

  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimerViewStateCopyWith<_TimerViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimewViewStateInitialCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimewViewStateInitialCopyWith(TimewViewStateInitial value,
          $Res Function(TimewViewStateInitial) then) =
      _$TimewViewStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({int? duration});
}

/// @nodoc
class _$TimewViewStateInitialCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements $TimewViewStateInitialCopyWith<$Res> {
  _$TimewViewStateInitialCopyWithImpl(
      TimewViewStateInitial _value, $Res Function(TimewViewStateInitial) _then)
      : super(_value, (v) => _then(v as TimewViewStateInitial));

  @override
  TimewViewStateInitial get _value => super._value as TimewViewStateInitial;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(TimewViewStateInitial(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimewViewStateInitial extends TimewViewStateInitial
    with DiagnosticableTreeMixin {
  _$TimewViewStateInitial({this.duration = 14}) : super._();

  @JsonKey(defaultValue: 14)
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.initial(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.initial'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimewViewStateInitial &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $TimewViewStateInitialCopyWith<TimewViewStateInitial> get copyWith =>
      _$TimewViewStateInitialCopyWithImpl<TimewViewStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)
        $default, {
    required TResult Function(int? duration) initial,
    required TResult Function(int? duration) loading,
    required TResult Function(int? duration) durationSet,
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? duration)
        timerActivated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, String? error)
        error,
  }) {
    return initial(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        $default, {
    TResult Function(int? duration)? initial,
    TResult Function(int? duration)? loading,
    TResult Function(int? duration)? durationSet,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        timerActivated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            String? error)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimerViewState value) $default, {
    required TResult Function(TimewViewStateInitial value) initial,
    required TResult Function(TimerViewStateLoading value) loading,
    required TResult Function(TimerViewStateDurationSet value) durationSet,
    required TResult Function(TimerViewStateTimerActivated value)
        timerActivated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateTimerActivated value)? timerActivated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimewViewStateInitial extends TimerViewState {
  factory TimewViewStateInitial({int? duration}) = _$TimewViewStateInitial;
  TimewViewStateInitial._() : super._();

  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimewViewStateInitialCopyWith<TimewViewStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateLoadingCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateLoadingCopyWith(TimerViewStateLoading value,
          $Res Function(TimerViewStateLoading) then) =
      _$TimerViewStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({int? duration});
}

/// @nodoc
class _$TimerViewStateLoadingCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements $TimerViewStateLoadingCopyWith<$Res> {
  _$TimerViewStateLoadingCopyWithImpl(
      TimerViewStateLoading _value, $Res Function(TimerViewStateLoading) _then)
      : super(_value, (v) => _then(v as TimerViewStateLoading));

  @override
  TimerViewStateLoading get _value => super._value as TimerViewStateLoading;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(TimerViewStateLoading(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimerViewStateLoading extends TimerViewStateLoading
    with DiagnosticableTreeMixin {
  _$TimerViewStateLoading({this.duration = 14}) : super._();

  @JsonKey(defaultValue: 14)
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.loading(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.loading'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateLoading &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateLoadingCopyWith<TimerViewStateLoading> get copyWith =>
      _$TimerViewStateLoadingCopyWithImpl<TimerViewStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)
        $default, {
    required TResult Function(int? duration) initial,
    required TResult Function(int? duration) loading,
    required TResult Function(int? duration) durationSet,
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? duration)
        timerActivated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, String? error)
        error,
  }) {
    return loading(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        $default, {
    TResult Function(int? duration)? initial,
    TResult Function(int? duration)? loading,
    TResult Function(int? duration)? durationSet,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        timerActivated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            String? error)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimerViewState value) $default, {
    required TResult Function(TimewViewStateInitial value) initial,
    required TResult Function(TimerViewStateLoading value) loading,
    required TResult Function(TimerViewStateDurationSet value) durationSet,
    required TResult Function(TimerViewStateTimerActivated value)
        timerActivated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateTimerActivated value)? timerActivated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TimerViewStateLoading extends TimerViewState {
  factory TimerViewStateLoading({int? duration}) = _$TimerViewStateLoading;
  TimerViewStateLoading._() : super._();

  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateLoadingCopyWith<TimerViewStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateDurationSetCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateDurationSetCopyWith(TimerViewStateDurationSet value,
          $Res Function(TimerViewStateDurationSet) then) =
      _$TimerViewStateDurationSetCopyWithImpl<$Res>;
  @override
  $Res call({int? duration});
}

/// @nodoc
class _$TimerViewStateDurationSetCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements $TimerViewStateDurationSetCopyWith<$Res> {
  _$TimerViewStateDurationSetCopyWithImpl(TimerViewStateDurationSet _value,
      $Res Function(TimerViewStateDurationSet) _then)
      : super(_value, (v) => _then(v as TimerViewStateDurationSet));

  @override
  TimerViewStateDurationSet get _value =>
      super._value as TimerViewStateDurationSet;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(TimerViewStateDurationSet(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimerViewStateDurationSet extends TimerViewStateDurationSet
    with DiagnosticableTreeMixin {
  _$TimerViewStateDurationSet({this.duration = 14}) : super._();

  @JsonKey(defaultValue: 14)
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.durationSet(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.durationSet'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateDurationSet &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateDurationSetCopyWith<TimerViewStateDurationSet> get copyWith =>
      _$TimerViewStateDurationSetCopyWithImpl<TimerViewStateDurationSet>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)
        $default, {
    required TResult Function(int? duration) initial,
    required TResult Function(int? duration) loading,
    required TResult Function(int? duration) durationSet,
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? duration)
        timerActivated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, String? error)
        error,
  }) {
    return durationSet(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        $default, {
    TResult Function(int? duration)? initial,
    TResult Function(int? duration)? loading,
    TResult Function(int? duration)? durationSet,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        timerActivated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            String? error)?
        error,
    required TResult orElse(),
  }) {
    if (durationSet != null) {
      return durationSet(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimerViewState value) $default, {
    required TResult Function(TimewViewStateInitial value) initial,
    required TResult Function(TimerViewStateLoading value) loading,
    required TResult Function(TimerViewStateDurationSet value) durationSet,
    required TResult Function(TimerViewStateTimerActivated value)
        timerActivated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return durationSet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateTimerActivated value)? timerActivated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (durationSet != null) {
      return durationSet(this);
    }
    return orElse();
  }
}

abstract class TimerViewStateDurationSet extends TimerViewState {
  factory TimerViewStateDurationSet({int? duration}) =
      _$TimerViewStateDurationSet;
  TimerViewStateDurationSet._() : super._();

  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateDurationSetCopyWith<TimerViewStateDurationSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateTimerActivatedCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateTimerActivatedCopyWith(
          TimerViewStateTimerActivated value,
          $Res Function(TimerViewStateTimerActivated) then) =
      _$TimerViewStateTimerActivatedCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class _$TimerViewStateTimerActivatedCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements $TimerViewStateTimerActivatedCopyWith<$Res> {
  _$TimerViewStateTimerActivatedCopyWithImpl(
      TimerViewStateTimerActivated _value,
      $Res Function(TimerViewStateTimerActivated) _then)
      : super(_value, (v) => _then(v as TimerViewStateTimerActivated));

  @override
  TimerViewStateTimerActivated get _value =>
      super._value as TimerViewStateTimerActivated;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
  }) {
    return _then(TimerViewStateTimerActivated(
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

class _$TimerViewStateTimerActivated extends TimerViewStateTimerActivated
    with DiagnosticableTreeMixin {
  _$TimerViewStateTimerActivated(
      {this.startDate, this.endDate, this.duration = 14})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @JsonKey(defaultValue: 14)
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.timerActivated(startDate: $startDate, endDate: $endDate, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.timerActivated'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateTimerActivated &&
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
  $TimerViewStateTimerActivatedCopyWith<TimerViewStateTimerActivated>
      get copyWith => _$TimerViewStateTimerActivatedCopyWithImpl<
          TimerViewStateTimerActivated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)
        $default, {
    required TResult Function(int? duration) initial,
    required TResult Function(int? duration) loading,
    required TResult Function(int? duration) durationSet,
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? duration)
        timerActivated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, String? error)
        error,
  }) {
    return timerActivated(startDate, endDate, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        $default, {
    TResult Function(int? duration)? initial,
    TResult Function(int? duration)? loading,
    TResult Function(int? duration)? durationSet,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        timerActivated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            String? error)?
        error,
    required TResult orElse(),
  }) {
    if (timerActivated != null) {
      return timerActivated(startDate, endDate, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimerViewState value) $default, {
    required TResult Function(TimewViewStateInitial value) initial,
    required TResult Function(TimerViewStateLoading value) loading,
    required TResult Function(TimerViewStateDurationSet value) durationSet,
    required TResult Function(TimerViewStateTimerActivated value)
        timerActivated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return timerActivated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateTimerActivated value)? timerActivated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (timerActivated != null) {
      return timerActivated(this);
    }
    return orElse();
  }
}

abstract class TimerViewStateTimerActivated extends TimerViewState {
  factory TimerViewStateTimerActivated(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration}) = _$TimerViewStateTimerActivated;
  TimerViewStateTimerActivated._() : super._();

  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateTimerActivatedCopyWith<TimerViewStateTimerActivated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateErrorCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateErrorCopyWith(
          TimerViewStateError value, $Res Function(TimerViewStateError) then) =
      _$TimerViewStateErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? startDate, DateTime? endDate, int? duration, String? error});
}

/// @nodoc
class _$TimerViewStateErrorCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements $TimerViewStateErrorCopyWith<$Res> {
  _$TimerViewStateErrorCopyWithImpl(
      TimerViewStateError _value, $Res Function(TimerViewStateError) _then)
      : super(_value, (v) => _then(v as TimerViewStateError));

  @override
  TimerViewStateError get _value => super._value as TimerViewStateError;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
    Object? error = freezed,
  }) {
    return _then(TimerViewStateError(
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
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TimerViewStateError extends TimerViewStateError
    with DiagnosticableTreeMixin {
  _$TimerViewStateError(
      {this.startDate, this.endDate, this.duration = 14, this.error})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.error(startDate: $startDate, endDate: $endDate, duration: $duration, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.error'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateError &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateErrorCopyWith<TimerViewStateError> get copyWith =>
      _$TimerViewStateErrorCopyWithImpl<TimerViewStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)
        $default, {
    required TResult Function(int? duration) initial,
    required TResult Function(int? duration) loading,
    required TResult Function(int? duration) durationSet,
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? duration)
        timerActivated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, String? error)
        error,
  }) {
    return error(startDate, endDate, duration, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        $default, {
    TResult Function(int? duration)? initial,
    TResult Function(int? duration)? loading,
    TResult Function(int? duration)? durationSet,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration)?
        timerActivated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            String? error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(startDate, endDate, duration, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimerViewState value) $default, {
    required TResult Function(TimewViewStateInitial value) initial,
    required TResult Function(TimerViewStateLoading value) loading,
    required TResult Function(TimerViewStateDurationSet value) durationSet,
    required TResult Function(TimerViewStateTimerActivated value)
        timerActivated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateTimerActivated value)? timerActivated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TimerViewStateError extends TimerViewState {
  factory TimerViewStateError(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration,
      String? error}) = _$TimerViewStateError;
  TimerViewStateError._() : super._();

  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateErrorCopyWith<TimerViewStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
