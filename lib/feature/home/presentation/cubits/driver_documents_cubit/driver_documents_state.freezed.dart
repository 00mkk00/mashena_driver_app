// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_documents_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverDocumentsState {
  DriverDocumentsStatus get status => throw _privateConstructorUsedError;
  List<DriverDocumentEntity> get documents =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DriverDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverDocumentsStateCopyWith<DriverDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDocumentsStateCopyWith<$Res> {
  factory $DriverDocumentsStateCopyWith(
    DriverDocumentsState value,
    $Res Function(DriverDocumentsState) then,
  ) = _$DriverDocumentsStateCopyWithImpl<$Res, DriverDocumentsState>;
  @useResult
  $Res call({
    DriverDocumentsStatus status,
    List<DriverDocumentEntity> documents,
    String? errorMessage,
  });
}

/// @nodoc
class _$DriverDocumentsStateCopyWithImpl<
  $Res,
  $Val extends DriverDocumentsState
>
    implements $DriverDocumentsStateCopyWith<$Res> {
  _$DriverDocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? documents = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as DriverDocumentsStatus,
            documents: null == documents
                ? _value.documents
                : documents // ignore: cast_nullable_to_non_nullable
                      as List<DriverDocumentEntity>,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverDocumentsStateImplCopyWith<$Res>
    implements $DriverDocumentsStateCopyWith<$Res> {
  factory _$$DriverDocumentsStateImplCopyWith(
    _$DriverDocumentsStateImpl value,
    $Res Function(_$DriverDocumentsStateImpl) then,
  ) = __$$DriverDocumentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DriverDocumentsStatus status,
    List<DriverDocumentEntity> documents,
    String? errorMessage,
  });
}

/// @nodoc
class __$$DriverDocumentsStateImplCopyWithImpl<$Res>
    extends _$DriverDocumentsStateCopyWithImpl<$Res, _$DriverDocumentsStateImpl>
    implements _$$DriverDocumentsStateImplCopyWith<$Res> {
  __$$DriverDocumentsStateImplCopyWithImpl(
    _$DriverDocumentsStateImpl _value,
    $Res Function(_$DriverDocumentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? documents = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$DriverDocumentsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as DriverDocumentsStatus,
        documents: null == documents
            ? _value._documents
            : documents // ignore: cast_nullable_to_non_nullable
                  as List<DriverDocumentEntity>,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$DriverDocumentsStateImpl implements _DriverDocumentsState {
  const _$DriverDocumentsStateImpl({
    this.status = DriverDocumentsStatus.initial,
    final List<DriverDocumentEntity> documents = const [],
    this.errorMessage,
  }) : _documents = documents;

  @override
  @JsonKey()
  final DriverDocumentsStatus status;
  final List<DriverDocumentEntity> _documents;
  @override
  @JsonKey()
  List<DriverDocumentEntity> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DriverDocumentsState(status: $status, documents: $documents, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverDocumentsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._documents,
              _documents,
            ) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_documents),
    errorMessage,
  );

  /// Create a copy of DriverDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverDocumentsStateImplCopyWith<_$DriverDocumentsStateImpl>
  get copyWith =>
      __$$DriverDocumentsStateImplCopyWithImpl<_$DriverDocumentsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DriverDocumentsState implements DriverDocumentsState {
  const factory _DriverDocumentsState({
    final DriverDocumentsStatus status,
    final List<DriverDocumentEntity> documents,
    final String? errorMessage,
  }) = _$DriverDocumentsStateImpl;

  @override
  DriverDocumentsStatus get status;
  @override
  List<DriverDocumentEntity> get documents;
  @override
  String? get errorMessage;

  /// Create a copy of DriverDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverDocumentsStateImplCopyWith<_$DriverDocumentsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
