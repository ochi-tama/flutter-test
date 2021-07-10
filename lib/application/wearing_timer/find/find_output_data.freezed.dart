// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_output_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FindOutputDataTearOff {
  const _$FindOutputDataTearOff();

  _FindOutputData call(
      {DateTime? startDate, DateTime? endDate, int? duration}) {
    return _FindOutputData(
      startDate: startDate,
      endDate: endDate,
      duration: duration,
    );
  }
}

/// @nodoc
const $FindOutputData = _$FindOutputDataTearOff();

/// @nodoc
mixin _$FindOutputData {
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FindOutputDataCopyWith<FindOutputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindOutputDataCopyWith<$Res> {
  factory $FindOutputDataCopyWith(
          FindOutputData value, $Res Function(FindOutputData) then) =
      _$FindOutputDataCopyWithImpl<$Res>;
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class _$FindOutputDataCopyWithImpl<$Res>
    implements $FindOutputDataCopyWith<$Res> {
  _$FindOutputDataCopyWithImpl(this._value, this._then);

  final FindOutputData _value;
  // ignore: unused_field
  final $Res Function(FindOutputData) _then;

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
abstract class _$FindOutputDataCopyWith<$Res>
    implements $FindOutputDataCopyWith<$Res> {
  factory _$FindOutputDataCopyWith(
          _FindOutputData value, $Res Function(_FindOutputData) then) =
      __$FindOutputDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? startDate, DateTime? endDate, int? duration});
}

/// @nodoc
class __$FindOutputDataCopyWithImpl<$Res>
    extends _$FindOutputDataCopyWithImpl<$Res>
    implements _$FindOutputDataCopyWith<$Res> {
  __$FindOutputDataCopyWithImpl(
      _FindOutputData _value, $Res Function(_FindOutputData) _then)
      : super(_value, (v) => _then(v as _FindOutputData));

  @override
  _FindOutputData get _value => super._value as _FindOutputData;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? duration = freezed,
  }) {
    return _then(_FindOutputData(
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

class _$_FindOutputData extends _FindOutputData with DiagnosticableTreeMixin {
  const _$_FindOutputData({this.startDate, this.endDate, this.duration})
      : super._();

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final int? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindOutputData(startDate: $startDate, endDate: $endDate, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindOutputData'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindOutputData &&
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
  _$FindOutputDataCopyWith<_FindOutputData> get copyWith =>
      __$FindOutputDataCopyWithImpl<_FindOutputData>(this, _$identity);
}

abstract class _FindOutputData extends FindOutputData {
  const factory _FindOutputData(
      {DateTime? startDate,
      DateTime? endDate,
      int? duration}) = _$_FindOutputData;
  const _FindOutputData._() : super._();

  @override
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindOutputDataCopyWith<_FindOutputData> get copyWith =>
      throw _privateConstructorUsedError;
}
