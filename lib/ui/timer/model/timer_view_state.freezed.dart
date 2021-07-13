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
      {DateTime? startDate,
      DateTime? endDate,
      int? duration = 14,
      int? remainedDays}) {
    return _TimerViewState(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
      remainedDays: remainedDays,
    );
  }

  TimewViewStateInitial initial({int? duration = 14, int? remainedDays}) {
    return TimewViewStateInitial(
      duration: duration,
      remainedDays: remainedDays,
    );
  }

  TimerViewStateLoading loading({int? duration = 14, int? remainedDays}) {
    return TimerViewStateLoading(
      duration: duration,
      remainedDays: remainedDays,
    );
  }

  TimerViewStateDurationSet durationSet(
      {int? duration = 14, int? remainedDays}) {
    return TimerViewStateDurationSet(
      duration: duration,
      remainedDays: remainedDays,
    );
  }

  TimerViewStateBeforeActivated beforeActivated(
      {required DateTime startDate, int? duration = 14, int? remainedDays}) {
    return TimerViewStateBeforeActivated(
      startDate: startDate,
      duration: duration,
      remainedDays: remainedDays,
    );
  }

  TimerViewStateActivated activated(
      {required DateTime startDate,
      required DateTime endDate,
      int? duration = 14,
      int? remainedDays}) {
    return TimerViewStateActivated(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
      remainedDays: remainedDays,
    );
  }

  TimerViewStateError error(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration = 14,
      int? remainedDays,
      String? error}) {
    return TimerViewStateError(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
      remainedDays: remainedDays,
      error: error,
    );
  }
}

/// @nodoc
const $TimerViewState = _$TimerViewStateTearOff();

/// @nodoc
mixin _$TimerViewState {
  int? get duration => throw _privateConstructorUsedError;
  int? get remainedDays => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
    required TResult Function(TimerViewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
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
  $Res call({int? duration, int? remainedDays});
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
    Object? remainedDays = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration,
      int? remainedDays});
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
    Object? remainedDays = freezed,
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
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TimerViewState extends _TimerViewState with DiagnosticableTreeMixin {
  _$_TimerViewState(
      {this.startDate, this.endDate, this.duration = 14, this.remainedDays})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final int? remainedDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState(startDate: $startDate, endDate: $endDate, duration: $duration, remainedDays: $remainedDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('remainedDays', remainedDays));
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
                    .equals(other.duration, duration)) &&
            (identical(other.remainedDays, remainedDays) ||
                const DeepCollectionEquality()
                    .equals(other.remainedDays, remainedDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(remainedDays);

  @JsonKey(ignore: true)
  @override
  _$TimerViewStateCopyWith<_TimerViewState> get copyWith =>
      __$TimerViewStateCopyWithImpl<_TimerViewState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) {
    return $default(startDate, endDate, duration, remainedDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(startDate, endDate, duration, remainedDays);
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
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
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
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
      int? duration,
      int? remainedDays}) = _$_TimerViewState;
  _TimerViewState._() : super._();

  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  int? get remainedDays => throw _privateConstructorUsedError;
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
  $Res call({int? duration, int? remainedDays});
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
    Object? remainedDays = freezed,
  }) {
    return _then(TimewViewStateInitial(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimewViewStateInitial extends TimewViewStateInitial
    with DiagnosticableTreeMixin {
  _$TimewViewStateInitial({this.duration = 14, this.remainedDays}) : super._();

  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final int? remainedDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.initial(duration: $duration, remainedDays: $remainedDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.initial'))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('remainedDays', remainedDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimewViewStateInitial &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.remainedDays, remainedDays) ||
                const DeepCollectionEquality()
                    .equals(other.remainedDays, remainedDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(remainedDays);

  @JsonKey(ignore: true)
  @override
  $TimewViewStateInitialCopyWith<TimewViewStateInitial> get copyWith =>
      _$TimewViewStateInitialCopyWithImpl<TimewViewStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) {
    return initial(duration, remainedDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration, remainedDays);
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
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
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
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
  factory TimewViewStateInitial({int? duration, int? remainedDays}) =
      _$TimewViewStateInitial;
  TimewViewStateInitial._() : super._();

  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  int? get remainedDays => throw _privateConstructorUsedError;
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
  $Res call({int? duration, int? remainedDays});
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
    Object? remainedDays = freezed,
  }) {
    return _then(TimerViewStateLoading(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimerViewStateLoading extends TimerViewStateLoading
    with DiagnosticableTreeMixin {
  _$TimerViewStateLoading({this.duration = 14, this.remainedDays}) : super._();

  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final int? remainedDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.loading(duration: $duration, remainedDays: $remainedDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.loading'))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('remainedDays', remainedDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateLoading &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.remainedDays, remainedDays) ||
                const DeepCollectionEquality()
                    .equals(other.remainedDays, remainedDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(remainedDays);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateLoadingCopyWith<TimerViewStateLoading> get copyWith =>
      _$TimerViewStateLoadingCopyWithImpl<TimerViewStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) {
    return loading(duration, remainedDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(duration, remainedDays);
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
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
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
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
  factory TimerViewStateLoading({int? duration, int? remainedDays}) =
      _$TimerViewStateLoading;
  TimerViewStateLoading._() : super._();

  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  int? get remainedDays => throw _privateConstructorUsedError;
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
  $Res call({int? duration, int? remainedDays});
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
    Object? remainedDays = freezed,
  }) {
    return _then(TimerViewStateDurationSet(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimerViewStateDurationSet extends TimerViewStateDurationSet
    with DiagnosticableTreeMixin {
  _$TimerViewStateDurationSet({this.duration = 14, this.remainedDays})
      : super._();

  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final int? remainedDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.durationSet(duration: $duration, remainedDays: $remainedDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.durationSet'))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('remainedDays', remainedDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateDurationSet &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.remainedDays, remainedDays) ||
                const DeepCollectionEquality()
                    .equals(other.remainedDays, remainedDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(remainedDays);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateDurationSetCopyWith<TimerViewStateDurationSet> get copyWith =>
      _$TimerViewStateDurationSetCopyWithImpl<TimerViewStateDurationSet>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) {
    return durationSet(duration, remainedDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (durationSet != null) {
      return durationSet(duration, remainedDays);
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
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
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
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
  factory TimerViewStateDurationSet({int? duration, int? remainedDays}) =
      _$TimerViewStateDurationSet;
  TimerViewStateDurationSet._() : super._();

  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  int? get remainedDays => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateDurationSetCopyWith<TimerViewStateDurationSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateBeforeActivatedCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateBeforeActivatedCopyWith(
          TimerViewStateBeforeActivated value,
          $Res Function(TimerViewStateBeforeActivated) then) =
      _$TimerViewStateBeforeActivatedCopyWithImpl<$Res>;
  @override
  $Res call({DateTime startDate, int? duration, int? remainedDays});
}

/// @nodoc
class _$TimerViewStateBeforeActivatedCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements $TimerViewStateBeforeActivatedCopyWith<$Res> {
  _$TimerViewStateBeforeActivatedCopyWithImpl(
      TimerViewStateBeforeActivated _value,
      $Res Function(TimerViewStateBeforeActivated) _then)
      : super(_value, (v) => _then(v as TimerViewStateBeforeActivated));

  @override
  TimerViewStateBeforeActivated get _value =>
      super._value as TimerViewStateBeforeActivated;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? duration = freezed,
    Object? remainedDays = freezed,
  }) {
    return _then(TimerViewStateBeforeActivated(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimerViewStateBeforeActivated extends TimerViewStateBeforeActivated
    with DiagnosticableTreeMixin {
  _$TimerViewStateBeforeActivated(
      {required this.startDate, this.duration = 14, this.remainedDays})
      : super._();

  @override
  final DateTime startDate;
  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final int? remainedDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.beforeActivated(startDate: $startDate, duration: $duration, remainedDays: $remainedDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.beforeActivated'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('remainedDays', remainedDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateBeforeActivated &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.remainedDays, remainedDays) ||
                const DeepCollectionEquality()
                    .equals(other.remainedDays, remainedDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(remainedDays);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateBeforeActivatedCopyWith<TimerViewStateBeforeActivated>
      get copyWith => _$TimerViewStateBeforeActivatedCopyWithImpl<
          TimerViewStateBeforeActivated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) {
    return beforeActivated(startDate, duration, remainedDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (beforeActivated != null) {
      return beforeActivated(startDate, duration, remainedDays);
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return beforeActivated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (beforeActivated != null) {
      return beforeActivated(this);
    }
    return orElse();
  }
}

abstract class TimerViewStateBeforeActivated extends TimerViewState {
  factory TimerViewStateBeforeActivated(
      {required DateTime startDate,
      int? duration,
      int? remainedDays}) = _$TimerViewStateBeforeActivated;
  TimerViewStateBeforeActivated._() : super._();

  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  int? get remainedDays => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateBeforeActivatedCopyWith<TimerViewStateBeforeActivated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateActivatedCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateActivatedCopyWith(TimerViewStateActivated value,
          $Res Function(TimerViewStateActivated) then) =
      _$TimerViewStateActivatedCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime startDate, DateTime endDate, int? duration, int? remainedDays});
}

/// @nodoc
class _$TimerViewStateActivatedCopyWithImpl<$Res>
    extends _$TimerViewStateCopyWithImpl<$Res>
    implements $TimerViewStateActivatedCopyWith<$Res> {
  _$TimerViewStateActivatedCopyWithImpl(TimerViewStateActivated _value,
      $Res Function(TimerViewStateActivated) _then)
      : super(_value, (v) => _then(v as TimerViewStateActivated));

  @override
  TimerViewStateActivated get _value => super._value as TimerViewStateActivated;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
    Object? remainedDays = freezed,
  }) {
    return _then(TimerViewStateActivated(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TimerViewStateActivated extends TimerViewStateActivated
    with DiagnosticableTreeMixin {
  _$TimerViewStateActivated(
      {required this.startDate,
      required this.endDate,
      this.duration = 14,
      this.remainedDays})
      : super._();

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final int? remainedDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.activated(startDate: $startDate, endDate: $endDate, duration: $duration, remainedDays: $remainedDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.activated'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('remainedDays', remainedDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerViewStateActivated &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.remainedDays, remainedDays) ||
                const DeepCollectionEquality()
                    .equals(other.remainedDays, remainedDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(remainedDays);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateActivatedCopyWith<TimerViewStateActivated> get copyWith =>
      _$TimerViewStateActivatedCopyWithImpl<TimerViewStateActivated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) {
    return activated(startDate, endDate, duration, remainedDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (activated != null) {
      return activated(startDate, endDate, duration, remainedDays);
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
    required TResult Function(TimerViewStateError value) error,
  }) {
    return activated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimerViewState value)? $default, {
    TResult Function(TimewViewStateInitial value)? initial,
    TResult Function(TimerViewStateLoading value)? loading,
    TResult Function(TimerViewStateDurationSet value)? durationSet,
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
    TResult Function(TimerViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (activated != null) {
      return activated(this);
    }
    return orElse();
  }
}

abstract class TimerViewStateActivated extends TimerViewState {
  factory TimerViewStateActivated(
      {required DateTime startDate,
      required DateTime endDate,
      int? duration,
      int? remainedDays}) = _$TimerViewStateActivated;
  TimerViewStateActivated._() : super._();

  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  int? get remainedDays => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateActivatedCopyWith<TimerViewStateActivated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerViewStateErrorCopyWith<$Res>
    implements $TimerViewStateCopyWith<$Res> {
  factory $TimerViewStateErrorCopyWith(
          TimerViewStateError value, $Res Function(TimerViewStateError) then) =
      _$TimerViewStateErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration,
      int? remainedDays,
      String? error});
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
    Object? remainedDays = freezed,
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
      remainedDays: remainedDays == freezed
          ? _value.remainedDays
          : remainedDays // ignore: cast_nullable_to_non_nullable
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
      {this.startDate,
      this.endDate,
      this.duration = 14,
      this.remainedDays,
      this.error})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @JsonKey(defaultValue: 14)
  @override
  final int? duration;
  @override
  final int? remainedDays;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerViewState.error(startDate: $startDate, endDate: $endDate, duration: $duration, remainedDays: $remainedDays, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerViewState.error'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('remainedDays', remainedDays))
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
            (identical(other.remainedDays, remainedDays) ||
                const DeepCollectionEquality()
                    .equals(other.remainedDays, remainedDays)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(remainedDays) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $TimerViewStateErrorCopyWith<TimerViewStateError> get copyWith =>
      _$TimerViewStateErrorCopyWithImpl<TimerViewStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)
        $default, {
    required TResult Function(int? duration, int? remainedDays) initial,
    required TResult Function(int? duration, int? remainedDays) loading,
    required TResult Function(int? duration, int? remainedDays) durationSet,
    required TResult Function(
            DateTime startDate, int? duration, int? remainedDays)
        beforeActivated,
    required TResult Function(DateTime startDate, DateTime endDate,
            int? duration, int? remainedDays)
        activated,
    required TResult Function(DateTime? startDate, DateTime? endDate,
            int? duration, int? remainedDays, String? error)
        error,
  }) {
    return error(startDate, endDate, duration, remainedDays, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays)?
        $default, {
    TResult Function(int? duration, int? remainedDays)? initial,
    TResult Function(int? duration, int? remainedDays)? loading,
    TResult Function(int? duration, int? remainedDays)? durationSet,
    TResult Function(DateTime startDate, int? duration, int? remainedDays)?
        beforeActivated,
    TResult Function(DateTime startDate, DateTime endDate, int? duration,
            int? remainedDays)?
        activated,
    TResult Function(DateTime? startDate, DateTime? endDate, int? duration,
            int? remainedDays, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(startDate, endDate, duration, remainedDays, this.error);
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
    required TResult Function(TimerViewStateBeforeActivated value)
        beforeActivated,
    required TResult Function(TimerViewStateActivated value) activated,
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
    TResult Function(TimerViewStateBeforeActivated value)? beforeActivated,
    TResult Function(TimerViewStateActivated value)? activated,
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
      int? remainedDays,
      String? error}) = _$TimerViewStateError;
  TimerViewStateError._() : super._();

  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  int? get remainedDays => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TimerViewStateErrorCopyWith<TimerViewStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
