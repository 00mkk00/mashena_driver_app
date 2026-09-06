// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppealsState {
  AppealsStatus get status => throw _privateConstructorUsedError;
  List<AppealEntity> get appeals => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  AppealSubmissionStatus get submissionStatus =>
      throw _privateConstructorUsedError;
  AppealDetailsStatus get detailsStatus => throw _privateConstructorUsedError;
  AppealEntity? get selectedAppeal => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get submissionErrorMessage => throw _privateConstructorUsedError;
  String? get detailsErrorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppealsStateCopyWith<AppealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealsStateCopyWith<$Res> {
  factory $AppealsStateCopyWith(
    AppealsState value,
    $Res Function(AppealsState) then,
  ) = _$AppealsStateCopyWithImpl<$Res, AppealsState>;
  @useResult
  $Res call({
    AppealsStatus status,
    List<AppealEntity> appeals,
    bool hasReachedMax,
    AppealSubmissionStatus submissionStatus,
    AppealDetailsStatus detailsStatus,
    AppealEntity? selectedAppeal,
    String? errorMessage,
    String? submissionErrorMessage,
    String? detailsErrorMessage,
  });

  $AppealEntityCopyWith<$Res>? get selectedAppeal;
}

/// @nodoc
class _$AppealsStateCopyWithImpl<$Res, $Val extends AppealsState>
    implements $AppealsStateCopyWith<$Res> {
  _$AppealsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? appeals = null,
    Object? hasReachedMax = null,
    Object? submissionStatus = null,
    Object? detailsStatus = null,
    Object? selectedAppeal = freezed,
    Object? errorMessage = freezed,
    Object? submissionErrorMessage = freezed,
    Object? detailsErrorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as AppealsStatus,
            appeals: null == appeals
                ? _value.appeals
                : appeals // ignore: cast_nullable_to_non_nullable
                      as List<AppealEntity>,
            hasReachedMax: null == hasReachedMax
                ? _value.hasReachedMax
                : hasReachedMax // ignore: cast_nullable_to_non_nullable
                      as bool,
            submissionStatus: null == submissionStatus
                ? _value.submissionStatus
                : submissionStatus // ignore: cast_nullable_to_non_nullable
                      as AppealSubmissionStatus,
            detailsStatus: null == detailsStatus
                ? _value.detailsStatus
                : detailsStatus // ignore: cast_nullable_to_non_nullable
                      as AppealDetailsStatus,
            selectedAppeal: freezed == selectedAppeal
                ? _value.selectedAppeal
                : selectedAppeal // ignore: cast_nullable_to_non_nullable
                      as AppealEntity?,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            submissionErrorMessage: freezed == submissionErrorMessage
                ? _value.submissionErrorMessage
                : submissionErrorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            detailsErrorMessage: freezed == detailsErrorMessage
                ? _value.detailsErrorMessage
                : detailsErrorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppealEntityCopyWith<$Res>? get selectedAppeal {
    if (_value.selectedAppeal == null) {
      return null;
    }

    return $AppealEntityCopyWith<$Res>(_value.selectedAppeal!, (value) {
      return _then(_value.copyWith(selectedAppeal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppealsStateImplCopyWith<$Res>
    implements $AppealsStateCopyWith<$Res> {
  factory _$$AppealsStateImplCopyWith(
    _$AppealsStateImpl value,
    $Res Function(_$AppealsStateImpl) then,
  ) = __$$AppealsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AppealsStatus status,
    List<AppealEntity> appeals,
    bool hasReachedMax,
    AppealSubmissionStatus submissionStatus,
    AppealDetailsStatus detailsStatus,
    AppealEntity? selectedAppeal,
    String? errorMessage,
    String? submissionErrorMessage,
    String? detailsErrorMessage,
  });

  @override
  $AppealEntityCopyWith<$Res>? get selectedAppeal;
}

/// @nodoc
class __$$AppealsStateImplCopyWithImpl<$Res>
    extends _$AppealsStateCopyWithImpl<$Res, _$AppealsStateImpl>
    implements _$$AppealsStateImplCopyWith<$Res> {
  __$$AppealsStateImplCopyWithImpl(
    _$AppealsStateImpl _value,
    $Res Function(_$AppealsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? appeals = null,
    Object? hasReachedMax = null,
    Object? submissionStatus = null,
    Object? detailsStatus = null,
    Object? selectedAppeal = freezed,
    Object? errorMessage = freezed,
    Object? submissionErrorMessage = freezed,
    Object? detailsErrorMessage = freezed,
  }) {
    return _then(
      _$AppealsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as AppealsStatus,
        appeals: null == appeals
            ? _value._appeals
            : appeals // ignore: cast_nullable_to_non_nullable
                  as List<AppealEntity>,
        hasReachedMax: null == hasReachedMax
            ? _value.hasReachedMax
            : hasReachedMax // ignore: cast_nullable_to_non_nullable
                  as bool,
        submissionStatus: null == submissionStatus
            ? _value.submissionStatus
            : submissionStatus // ignore: cast_nullable_to_non_nullable
                  as AppealSubmissionStatus,
        detailsStatus: null == detailsStatus
            ? _value.detailsStatus
            : detailsStatus // ignore: cast_nullable_to_non_nullable
                  as AppealDetailsStatus,
        selectedAppeal: freezed == selectedAppeal
            ? _value.selectedAppeal
            : selectedAppeal // ignore: cast_nullable_to_non_nullable
                  as AppealEntity?,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        submissionErrorMessage: freezed == submissionErrorMessage
            ? _value.submissionErrorMessage
            : submissionErrorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        detailsErrorMessage: freezed == detailsErrorMessage
            ? _value.detailsErrorMessage
            : detailsErrorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AppealsStateImpl implements _AppealsState {
  const _$AppealsStateImpl({
    this.status = AppealsStatus.initial,
    final List<AppealEntity> appeals = const [],
    this.hasReachedMax = false,
    this.submissionStatus = AppealSubmissionStatus.initial,
    this.detailsStatus = AppealDetailsStatus.initial,
    this.selectedAppeal,
    this.errorMessage,
    this.submissionErrorMessage,
    this.detailsErrorMessage,
  }) : _appeals = appeals;

  @override
  @JsonKey()
  final AppealsStatus status;
  final List<AppealEntity> _appeals;
  @override
  @JsonKey()
  List<AppealEntity> get appeals {
    if (_appeals is EqualUnmodifiableListView) return _appeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appeals);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final AppealSubmissionStatus submissionStatus;
  @override
  @JsonKey()
  final AppealDetailsStatus detailsStatus;
  @override
  final AppealEntity? selectedAppeal;
  @override
  final String? errorMessage;
  @override
  final String? submissionErrorMessage;
  @override
  final String? detailsErrorMessage;

  @override
  String toString() {
    return 'AppealsState(status: $status, appeals: $appeals, hasReachedMax: $hasReachedMax, submissionStatus: $submissionStatus, detailsStatus: $detailsStatus, selectedAppeal: $selectedAppeal, errorMessage: $errorMessage, submissionErrorMessage: $submissionErrorMessage, detailsErrorMessage: $detailsErrorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._appeals, _appeals) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus) &&
            (identical(other.detailsStatus, detailsStatus) ||
                other.detailsStatus == detailsStatus) &&
            (identical(other.selectedAppeal, selectedAppeal) ||
                other.selectedAppeal == selectedAppeal) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.submissionErrorMessage, submissionErrorMessage) ||
                other.submissionErrorMessage == submissionErrorMessage) &&
            (identical(other.detailsErrorMessage, detailsErrorMessage) ||
                other.detailsErrorMessage == detailsErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_appeals),
    hasReachedMax,
    submissionStatus,
    detailsStatus,
    selectedAppeal,
    errorMessage,
    submissionErrorMessage,
    detailsErrorMessage,
  );

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealsStateImplCopyWith<_$AppealsStateImpl> get copyWith =>
      __$$AppealsStateImplCopyWithImpl<_$AppealsStateImpl>(this, _$identity);
}

abstract class _AppealsState implements AppealsState {
  const factory _AppealsState({
    final AppealsStatus status,
    final List<AppealEntity> appeals,
    final bool hasReachedMax,
    final AppealSubmissionStatus submissionStatus,
    final AppealDetailsStatus detailsStatus,
    final AppealEntity? selectedAppeal,
    final String? errorMessage,
    final String? submissionErrorMessage,
    final String? detailsErrorMessage,
  }) = _$AppealsStateImpl;

  @override
  AppealsStatus get status;
  @override
  List<AppealEntity> get appeals;
  @override
  bool get hasReachedMax;
  @override
  AppealSubmissionStatus get submissionStatus;
  @override
  AppealDetailsStatus get detailsStatus;
  @override
  AppealEntity? get selectedAppeal;
  @override
  String? get errorMessage;
  @override
  String? get submissionErrorMessage;
  @override
  String? get detailsErrorMessage;

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealsStateImplCopyWith<_$AppealsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
