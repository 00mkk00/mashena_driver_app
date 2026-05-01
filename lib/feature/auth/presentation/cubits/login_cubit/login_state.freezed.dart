// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
    LoginState value,
    $Res Function(LoginState) then,
  ) = _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginEntity auth});

  $LoginEntityCopyWith<$Res> get auth;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auth = null}) {
    return _then(
      _$SuccessImpl(
        null == auth
            ? _value.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as LoginEntity,
      ),
    );
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginEntityCopyWith<$Res> get auth {
    return $LoginEntityCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.auth);

  @override
  final LoginEntity auth;

  @override
  String toString() {
    return 'LoginState.success(auth: $auth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) {
    return success(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) {
    return success?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success(final LoginEntity auth) = _$SuccessImpl;

  LoginEntity get auth;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedsUploadImplCopyWith<$Res> {
  factory _$$NeedsUploadImplCopyWith(
    _$NeedsUploadImpl value,
    $Res Function(_$NeedsUploadImpl) then,
  ) = __$$NeedsUploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginEntity auth});

  $LoginEntityCopyWith<$Res> get auth;
}

/// @nodoc
class __$$NeedsUploadImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$NeedsUploadImpl>
    implements _$$NeedsUploadImplCopyWith<$Res> {
  __$$NeedsUploadImplCopyWithImpl(
    _$NeedsUploadImpl _value,
    $Res Function(_$NeedsUploadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auth = null}) {
    return _then(
      _$NeedsUploadImpl(
        null == auth
            ? _value.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as LoginEntity,
      ),
    );
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginEntityCopyWith<$Res> get auth {
    return $LoginEntityCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }
}

/// @nodoc

class _$NeedsUploadImpl implements _NeedsUpload {
  const _$NeedsUploadImpl(this.auth);

  @override
  final LoginEntity auth;

  @override
  String toString() {
    return 'LoginState.needsUpload(auth: $auth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedsUploadImpl &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedsUploadImplCopyWith<_$NeedsUploadImpl> get copyWith =>
      __$$NeedsUploadImplCopyWithImpl<_$NeedsUploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) {
    return needsUpload(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) {
    return needsUpload?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (needsUpload != null) {
      return needsUpload(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) {
    return needsUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) {
    return needsUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (needsUpload != null) {
      return needsUpload(this);
    }
    return orElse();
  }
}

abstract class _NeedsUpload implements LoginState {
  const factory _NeedsUpload(final LoginEntity auth) = _$NeedsUploadImpl;

  LoginEntity get auth;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NeedsUploadImplCopyWith<_$NeedsUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequireOtpImplCopyWith<$Res> {
  factory _$$RequireOtpImplCopyWith(
    _$RequireOtpImpl value,
    $Res Function(_$RequireOtpImpl) then,
  ) = __$$RequireOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, String email});
}

/// @nodoc
class __$$RequireOtpImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequireOtpImpl>
    implements _$$RequireOtpImplCopyWith<$Res> {
  __$$RequireOtpImplCopyWithImpl(
    _$RequireOtpImpl _value,
    $Res Function(_$RequireOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? email = null}) {
    return _then(
      _$RequireOtpImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RequireOtpImpl implements _RequireOtp {
  const _$RequireOtpImpl({required this.userId, required this.email});

  @override
  final int userId;
  @override
  final String email;

  @override
  String toString() {
    return 'LoginState.requireOtp(userId: $userId, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequireOtpImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, email);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequireOtpImplCopyWith<_$RequireOtpImpl> get copyWith =>
      __$$RequireOtpImplCopyWithImpl<_$RequireOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) {
    return requireOtp(userId, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) {
    return requireOtp?.call(userId, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (requireOtp != null) {
      return requireOtp(userId, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) {
    return requireOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) {
    return requireOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (requireOtp != null) {
      return requireOtp(this);
    }
    return orElse();
  }
}

abstract class _RequireOtp implements LoginState {
  const factory _RequireOtp({
    required final int userId,
    required final String email,
  }) = _$RequireOtpImpl;

  int get userId;
  String get email;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequireOtpImplCopyWith<_$RequireOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApprovalStatusImplCopyWith<$Res> {
  factory _$$ApprovalStatusImplCopyWith(
    _$ApprovalStatusImpl value,
    $Res Function(_$ApprovalStatusImpl) then,
  ) = __$$ApprovalStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$ApprovalStatusImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ApprovalStatusImpl>
    implements _$$ApprovalStatusImplCopyWith<$Res> {
  __$$ApprovalStatusImplCopyWithImpl(
    _$ApprovalStatusImpl _value,
    $Res Function(_$ApprovalStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$ApprovalStatusImpl(
        null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ApprovalStatusImpl implements _ApprovalStatus {
  const _$ApprovalStatusImpl(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'LoginState.approvalStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalStatusImplCopyWith<_$ApprovalStatusImpl> get copyWith =>
      __$$ApprovalStatusImplCopyWithImpl<_$ApprovalStatusImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) {
    return approvalStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) {
    return approvalStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (approvalStatus != null) {
      return approvalStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) {
    return approvalStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) {
    return approvalStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (approvalStatus != null) {
      return approvalStatus(this);
    }
    return orElse();
  }
}

abstract class _ApprovalStatus implements LoginState {
  const factory _ApprovalStatus(final String status) = _$ApprovalStatusImpl;

  String get status;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalStatusImplCopyWith<_$ApprovalStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginEntity auth) success,
    required TResult Function(LoginEntity auth) needsUpload,
    required TResult Function(int userId, String email) requireOtp,
    required TResult Function(String status) approvalStatus,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginEntity auth)? success,
    TResult? Function(LoginEntity auth)? needsUpload,
    TResult? Function(int userId, String email)? requireOtp,
    TResult? Function(String status)? approvalStatus,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginEntity auth)? success,
    TResult Function(LoginEntity auth)? needsUpload,
    TResult Function(int userId, String email)? requireOtp,
    TResult Function(String status)? approvalStatus,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_NeedsUpload value) needsUpload,
    required TResult Function(_RequireOtp value) requireOtp,
    required TResult Function(_ApprovalStatus value) approvalStatus,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_NeedsUpload value)? needsUpload,
    TResult? Function(_RequireOtp value)? requireOtp,
    TResult? Function(_ApprovalStatus value)? approvalStatus,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_NeedsUpload value)? needsUpload,
    TResult Function(_RequireOtp value)? requireOtp,
    TResult Function(_ApprovalStatus value)? approvalStatus,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
