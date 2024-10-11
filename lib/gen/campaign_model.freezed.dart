// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../models/campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignModel _$CampaignModelFromJson(Map<String, dynamic> json) {
  return _CampaignModel.fromJson(json);
}

/// @nodoc
mixin _$CampaignModel {
  String? get subject => throw _privateConstructorUsedError;
  String? get prevText => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get runOnce => throw _privateConstructorUsedError;
  bool get custAud => throw _privateConstructorUsedError;

  /// Serializes this CampaignModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignModelCopyWith<CampaignModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignModelCopyWith<$Res> {
  factory $CampaignModelCopyWith(
          CampaignModel value, $Res Function(CampaignModel) then) =
      _$CampaignModelCopyWithImpl<$Res, CampaignModel>;
  @useResult
  $Res call(
      {String? subject,
      String? prevText,
      String? name,
      String? email,
      bool runOnce,
      bool custAud});
}

/// @nodoc
class _$CampaignModelCopyWithImpl<$Res, $Val extends CampaignModel>
    implements $CampaignModelCopyWith<$Res> {
  _$CampaignModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? prevText = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? runOnce = null,
    Object? custAud = null,
  }) {
    return _then(_value.copyWith(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      prevText: freezed == prevText
          ? _value.prevText
          : prevText // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      runOnce: null == runOnce
          ? _value.runOnce
          : runOnce // ignore: cast_nullable_to_non_nullable
              as bool,
      custAud: null == custAud
          ? _value.custAud
          : custAud // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignModelImplCopyWith<$Res>
    implements $CampaignModelCopyWith<$Res> {
  factory _$$CampaignModelImplCopyWith(
          _$CampaignModelImpl value, $Res Function(_$CampaignModelImpl) then) =
      __$$CampaignModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? subject,
      String? prevText,
      String? name,
      String? email,
      bool runOnce,
      bool custAud});
}

/// @nodoc
class __$$CampaignModelImplCopyWithImpl<$Res>
    extends _$CampaignModelCopyWithImpl<$Res, _$CampaignModelImpl>
    implements _$$CampaignModelImplCopyWith<$Res> {
  __$$CampaignModelImplCopyWithImpl(
      _$CampaignModelImpl _value, $Res Function(_$CampaignModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? prevText = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? runOnce = null,
    Object? custAud = null,
  }) {
    return _then(_$CampaignModelImpl(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      prevText: freezed == prevText
          ? _value.prevText
          : prevText // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      runOnce: null == runOnce
          ? _value.runOnce
          : runOnce // ignore: cast_nullable_to_non_nullable
              as bool,
      custAud: null == custAud
          ? _value.custAud
          : custAud // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignModelImpl implements _CampaignModel {
  const _$CampaignModelImpl(
      {this.subject,
      this.prevText,
      this.name,
      this.email,
      this.runOnce = false,
      this.custAud = false});

  factory _$CampaignModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignModelImplFromJson(json);

  @override
  final String? subject;
  @override
  final String? prevText;
  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey()
  final bool runOnce;
  @override
  @JsonKey()
  final bool custAud;

  @override
  String toString() {
    return 'CampaignModel(subject: $subject, prevText: $prevText, name: $name, email: $email, runOnce: $runOnce, custAud: $custAud)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignModelImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.prevText, prevText) ||
                other.prevText == prevText) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.runOnce, runOnce) || other.runOnce == runOnce) &&
            (identical(other.custAud, custAud) || other.custAud == custAud));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, subject, prevText, name, email, runOnce, custAud);

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignModelImplCopyWith<_$CampaignModelImpl> get copyWith =>
      __$$CampaignModelImplCopyWithImpl<_$CampaignModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignModelImplToJson(
      this,
    );
  }
}

abstract class _CampaignModel implements CampaignModel {
  const factory _CampaignModel(
      {final String? subject,
      final String? prevText,
      final String? name,
      final String? email,
      final bool runOnce,
      final bool custAud}) = _$CampaignModelImpl;

  factory _CampaignModel.fromJson(Map<String, dynamic> json) =
      _$CampaignModelImpl.fromJson;

  @override
  String? get subject;
  @override
  String? get prevText;
  @override
  String? get name;
  @override
  String? get email;
  @override
  bool get runOnce;
  @override
  bool get custAud;

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignModelImplCopyWith<_$CampaignModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CampaignStepList _$CampaignStepListFromJson(Map<String, dynamic> json) {
  return _CampaignStepList.fromJson(json);
}

/// @nodoc
mixin _$CampaignStepList {
  List<CampaignStep> get data => throw _privateConstructorUsedError;

  /// Serializes this CampaignStepList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignStepList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignStepListCopyWith<CampaignStepList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignStepListCopyWith<$Res> {
  factory $CampaignStepListCopyWith(
          CampaignStepList value, $Res Function(CampaignStepList) then) =
      _$CampaignStepListCopyWithImpl<$Res, CampaignStepList>;
  @useResult
  $Res call({List<CampaignStep> data});
}

/// @nodoc
class _$CampaignStepListCopyWithImpl<$Res, $Val extends CampaignStepList>
    implements $CampaignStepListCopyWith<$Res> {
  _$CampaignStepListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignStepList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CampaignStep>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignStepListImplCopyWith<$Res>
    implements $CampaignStepListCopyWith<$Res> {
  factory _$$CampaignStepListImplCopyWith(_$CampaignStepListImpl value,
          $Res Function(_$CampaignStepListImpl) then) =
      __$$CampaignStepListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CampaignStep> data});
}

/// @nodoc
class __$$CampaignStepListImplCopyWithImpl<$Res>
    extends _$CampaignStepListCopyWithImpl<$Res, _$CampaignStepListImpl>
    implements _$$CampaignStepListImplCopyWith<$Res> {
  __$$CampaignStepListImplCopyWithImpl(_$CampaignStepListImpl _value,
      $Res Function(_$CampaignStepListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignStepList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CampaignStepListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CampaignStep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignStepListImpl implements _CampaignStepList {
  const _$CampaignStepListImpl({final List<CampaignStep> data = const []})
      : _data = data;

  factory _$CampaignStepListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignStepListImplFromJson(json);

  final List<CampaignStep> _data;
  @override
  @JsonKey()
  List<CampaignStep> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CampaignStepList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignStepListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CampaignStepList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignStepListImplCopyWith<_$CampaignStepListImpl> get copyWith =>
      __$$CampaignStepListImplCopyWithImpl<_$CampaignStepListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignStepListImplToJson(
      this,
    );
  }
}

abstract class _CampaignStepList implements CampaignStepList {
  const factory _CampaignStepList({final List<CampaignStep> data}) =
      _$CampaignStepListImpl;

  factory _CampaignStepList.fromJson(Map<String, dynamic> json) =
      _$CampaignStepListImpl.fromJson;

  @override
  List<CampaignStep> get data;

  /// Create a copy of CampaignStepList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignStepListImplCopyWith<_$CampaignStepListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CampaignStep _$CampaignStepFromJson(Map<String, dynamic> json) {
  return _CampaignStep.fromJson(json);
}

/// @nodoc
mixin _$CampaignStep {
  int get number => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  CampaignStepStatus? get status => throw _privateConstructorUsedError;

  /// Serializes this CampaignStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignStepCopyWith<CampaignStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignStepCopyWith<$Res> {
  factory $CampaignStepCopyWith(
          CampaignStep value, $Res Function(CampaignStep) then) =
      _$CampaignStepCopyWithImpl<$Res, CampaignStep>;
  @useResult
  $Res call(
      {int number,
      String? title,
      String? description,
      CampaignStepStatus? status});
}

/// @nodoc
class _$CampaignStepCopyWithImpl<$Res, $Val extends CampaignStep>
    implements $CampaignStepCopyWith<$Res> {
  _$CampaignStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CampaignStepStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignStepImplCopyWith<$Res>
    implements $CampaignStepCopyWith<$Res> {
  factory _$$CampaignStepImplCopyWith(
          _$CampaignStepImpl value, $Res Function(_$CampaignStepImpl) then) =
      __$$CampaignStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String? title,
      String? description,
      CampaignStepStatus? status});
}

/// @nodoc
class __$$CampaignStepImplCopyWithImpl<$Res>
    extends _$CampaignStepCopyWithImpl<$Res, _$CampaignStepImpl>
    implements _$$CampaignStepImplCopyWith<$Res> {
  __$$CampaignStepImplCopyWithImpl(
      _$CampaignStepImpl _value, $Res Function(_$CampaignStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_$CampaignStepImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CampaignStepStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignStepImpl implements _CampaignStep {
  const _$CampaignStepImpl(
      {this.number = 1, this.title, this.description, this.status});

  factory _$CampaignStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignStepImplFromJson(json);

  @override
  @JsonKey()
  final int number;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final CampaignStepStatus? status;

  @override
  String toString() {
    return 'CampaignStep(number: $number, title: $title, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignStepImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, number, title, description, status);

  /// Create a copy of CampaignStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignStepImplCopyWith<_$CampaignStepImpl> get copyWith =>
      __$$CampaignStepImplCopyWithImpl<_$CampaignStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignStepImplToJson(
      this,
    );
  }
}

abstract class _CampaignStep implements CampaignStep {
  const factory _CampaignStep(
      {final int number,
      final String? title,
      final String? description,
      final CampaignStepStatus? status}) = _$CampaignStepImpl;

  factory _CampaignStep.fromJson(Map<String, dynamic> json) =
      _$CampaignStepImpl.fromJson;

  @override
  int get number;
  @override
  String? get title;
  @override
  String? get description;
  @override
  CampaignStepStatus? get status;

  /// Create a copy of CampaignStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignStepImplCopyWith<_$CampaignStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
