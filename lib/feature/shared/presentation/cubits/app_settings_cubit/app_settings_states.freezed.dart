// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppSettingsState {
  bool get isLoadingRadius => throw _privateConstructorUsedError;
  List<int> get radiusOptions => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsStateCopyWith<AppSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsStateCopyWith<$Res> {
  factory $AppSettingsStateCopyWith(
    AppSettingsState value,
    $Res Function(AppSettingsState) then,
  ) = _$AppSettingsStateCopyWithImpl<$Res, AppSettingsState>;
  @useResult
  $Res call({bool isLoadingRadius, List<int> radiusOptions});
}

/// @nodoc
class _$AppSettingsStateCopyWithImpl<$Res, $Val extends AppSettingsState>
    implements $AppSettingsStateCopyWith<$Res> {
  _$AppSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoadingRadius = null, Object? radiusOptions = null}) {
    return _then(
      _value.copyWith(
            isLoadingRadius: null == isLoadingRadius
                ? _value.isLoadingRadius
                : isLoadingRadius // ignore: cast_nullable_to_non_nullable
                      as bool,
            radiusOptions: null == radiusOptions
                ? _value.radiusOptions
                : radiusOptions // ignore: cast_nullable_to_non_nullable
                      as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppSettingsStateImplCopyWith<$Res>
    implements $AppSettingsStateCopyWith<$Res> {
  factory _$$AppSettingsStateImplCopyWith(
    _$AppSettingsStateImpl value,
    $Res Function(_$AppSettingsStateImpl) then,
  ) = __$$AppSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoadingRadius, List<int> radiusOptions});
}

/// @nodoc
class __$$AppSettingsStateImplCopyWithImpl<$Res>
    extends _$AppSettingsStateCopyWithImpl<$Res, _$AppSettingsStateImpl>
    implements _$$AppSettingsStateImplCopyWith<$Res> {
  __$$AppSettingsStateImplCopyWithImpl(
    _$AppSettingsStateImpl _value,
    $Res Function(_$AppSettingsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoadingRadius = null, Object? radiusOptions = null}) {
    return _then(
      _$AppSettingsStateImpl(
        isLoadingRadius: null == isLoadingRadius
            ? _value.isLoadingRadius
            : isLoadingRadius // ignore: cast_nullable_to_non_nullable
                  as bool,
        radiusOptions: null == radiusOptions
            ? _value._radiusOptions
            : radiusOptions // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc

class _$AppSettingsStateImpl implements _AppSettingsState {
  const _$AppSettingsStateImpl({
    this.isLoadingRadius = false,
    final List<int> radiusOptions = const [],
  }) : _radiusOptions = radiusOptions;

  @override
  @JsonKey()
  final bool isLoadingRadius;
  final List<int> _radiusOptions;
  @override
  @JsonKey()
  List<int> get radiusOptions {
    if (_radiusOptions is EqualUnmodifiableListView) return _radiusOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radiusOptions);
  }

  @override
  String toString() {
    return 'AppSettingsState(isLoadingRadius: $isLoadingRadius, radiusOptions: $radiusOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsStateImpl &&
            (identical(other.isLoadingRadius, isLoadingRadius) ||
                other.isLoadingRadius == isLoadingRadius) &&
            const DeepCollectionEquality().equals(
              other._radiusOptions,
              _radiusOptions,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoadingRadius,
    const DeepCollectionEquality().hash(_radiusOptions),
  );

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsStateImplCopyWith<_$AppSettingsStateImpl> get copyWith =>
      __$$AppSettingsStateImplCopyWithImpl<_$AppSettingsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AppSettingsState implements AppSettingsState {
  const factory _AppSettingsState({
    final bool isLoadingRadius,
    final List<int> radiusOptions,
  }) = _$AppSettingsStateImpl;

  @override
  bool get isLoadingRadius;
  @override
  List<int> get radiusOptions;

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsStateImplCopyWith<_$AppSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
