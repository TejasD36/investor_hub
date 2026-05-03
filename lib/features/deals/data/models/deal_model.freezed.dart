// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealModel implements DiagnosticableTreeMixin {

@HiveField(0) String get id;@HiveField(1) String get companyName;@HiveField(2) String get industry;@HiveField(3) double get investmentRequired;@HiveField(4) double get expectedRoi;@HiveField(5) String get riskLevel;@HiveField(6) String get status;@HiveField(7) String get overview;@HiveField(8) String get financialHighlights;@HiveField(9) String get riskExplanation;@HiveField(10) String? get logoUrl;@HiveField(11) DateTime? get createdAt;
/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DealModelCopyWith<DealModel> get copyWith => _$DealModelCopyWithImpl<DealModel>(this as DealModel, _$identity);

  /// Serializes this DealModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('companyName', companyName))..add(DiagnosticsProperty('industry', industry))..add(DiagnosticsProperty('investmentRequired', investmentRequired))..add(DiagnosticsProperty('expectedRoi', expectedRoi))..add(DiagnosticsProperty('riskLevel', riskLevel))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('overview', overview))..add(DiagnosticsProperty('financialHighlights', financialHighlights))..add(DiagnosticsProperty('riskExplanation', riskExplanation))..add(DiagnosticsProperty('logoUrl', logoUrl))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DealModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.investmentRequired, investmentRequired) || other.investmentRequired == investmentRequired)&&(identical(other.expectedRoi, expectedRoi) || other.expectedRoi == expectedRoi)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.status, status) || other.status == status)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.financialHighlights, financialHighlights) || other.financialHighlights == financialHighlights)&&(identical(other.riskExplanation, riskExplanation) || other.riskExplanation == riskExplanation)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,industry,investmentRequired,expectedRoi,riskLevel,status,overview,financialHighlights,riskExplanation,logoUrl,createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealModel(id: $id, companyName: $companyName, industry: $industry, investmentRequired: $investmentRequired, expectedRoi: $expectedRoi, riskLevel: $riskLevel, status: $status, overview: $overview, financialHighlights: $financialHighlights, riskExplanation: $riskExplanation, logoUrl: $logoUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DealModelCopyWith<$Res>  {
  factory $DealModelCopyWith(DealModel value, $Res Function(DealModel) _then) = _$DealModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String companyName,@HiveField(2) String industry,@HiveField(3) double investmentRequired,@HiveField(4) double expectedRoi,@HiveField(5) String riskLevel,@HiveField(6) String status,@HiveField(7) String overview,@HiveField(8) String financialHighlights,@HiveField(9) String riskExplanation,@HiveField(10) String? logoUrl,@HiveField(11) DateTime? createdAt
});




}
/// @nodoc
class _$DealModelCopyWithImpl<$Res>
    implements $DealModelCopyWith<$Res> {
  _$DealModelCopyWithImpl(this._self, this._then);

  final DealModel _self;
  final $Res Function(DealModel) _then;

/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyName = null,Object? industry = null,Object? investmentRequired = null,Object? expectedRoi = null,Object? riskLevel = null,Object? status = null,Object? overview = null,Object? financialHighlights = null,Object? riskExplanation = null,Object? logoUrl = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,investmentRequired: null == investmentRequired ? _self.investmentRequired : investmentRequired // ignore: cast_nullable_to_non_nullable
as double,expectedRoi: null == expectedRoi ? _self.expectedRoi : expectedRoi // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,financialHighlights: null == financialHighlights ? _self.financialHighlights : financialHighlights // ignore: cast_nullable_to_non_nullable
as String,riskExplanation: null == riskExplanation ? _self.riskExplanation : riskExplanation // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DealModel].
extension DealModelPatterns on DealModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DealModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DealModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DealModel value)  $default,){
final _that = this;
switch (_that) {
case _DealModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DealModel value)?  $default,){
final _that = this;
switch (_that) {
case _DealModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String companyName, @HiveField(2)  String industry, @HiveField(3)  double investmentRequired, @HiveField(4)  double expectedRoi, @HiveField(5)  String riskLevel, @HiveField(6)  String status, @HiveField(7)  String overview, @HiveField(8)  String financialHighlights, @HiveField(9)  String riskExplanation, @HiveField(10)  String? logoUrl, @HiveField(11)  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DealModel() when $default != null:
return $default(_that.id,_that.companyName,_that.industry,_that.investmentRequired,_that.expectedRoi,_that.riskLevel,_that.status,_that.overview,_that.financialHighlights,_that.riskExplanation,_that.logoUrl,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String companyName, @HiveField(2)  String industry, @HiveField(3)  double investmentRequired, @HiveField(4)  double expectedRoi, @HiveField(5)  String riskLevel, @HiveField(6)  String status, @HiveField(7)  String overview, @HiveField(8)  String financialHighlights, @HiveField(9)  String riskExplanation, @HiveField(10)  String? logoUrl, @HiveField(11)  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DealModel():
return $default(_that.id,_that.companyName,_that.industry,_that.investmentRequired,_that.expectedRoi,_that.riskLevel,_that.status,_that.overview,_that.financialHighlights,_that.riskExplanation,_that.logoUrl,_that.createdAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String companyName, @HiveField(2)  String industry, @HiveField(3)  double investmentRequired, @HiveField(4)  double expectedRoi, @HiveField(5)  String riskLevel, @HiveField(6)  String status, @HiveField(7)  String overview, @HiveField(8)  String financialHighlights, @HiveField(9)  String riskExplanation, @HiveField(10)  String? logoUrl, @HiveField(11)  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DealModel() when $default != null:
return $default(_that.id,_that.companyName,_that.industry,_that.investmentRequired,_that.expectedRoi,_that.riskLevel,_that.status,_that.overview,_that.financialHighlights,_that.riskExplanation,_that.logoUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DealModel with DiagnosticableTreeMixin implements DealModel {
  const _DealModel({@HiveField(0) required this.id, @HiveField(1) required this.companyName, @HiveField(2) required this.industry, @HiveField(3) required this.investmentRequired, @HiveField(4) required this.expectedRoi, @HiveField(5) required this.riskLevel, @HiveField(6) required this.status, @HiveField(7) required this.overview, @HiveField(8) required this.financialHighlights, @HiveField(9) required this.riskExplanation, @HiveField(10) this.logoUrl, @HiveField(11) this.createdAt});
  factory _DealModel.fromJson(Map<String, dynamic> json) => _$DealModelFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String companyName;
@override@HiveField(2) final  String industry;
@override@HiveField(3) final  double investmentRequired;
@override@HiveField(4) final  double expectedRoi;
@override@HiveField(5) final  String riskLevel;
@override@HiveField(6) final  String status;
@override@HiveField(7) final  String overview;
@override@HiveField(8) final  String financialHighlights;
@override@HiveField(9) final  String riskExplanation;
@override@HiveField(10) final  String? logoUrl;
@override@HiveField(11) final  DateTime? createdAt;

/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DealModelCopyWith<_DealModel> get copyWith => __$DealModelCopyWithImpl<_DealModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DealModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('companyName', companyName))..add(DiagnosticsProperty('industry', industry))..add(DiagnosticsProperty('investmentRequired', investmentRequired))..add(DiagnosticsProperty('expectedRoi', expectedRoi))..add(DiagnosticsProperty('riskLevel', riskLevel))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('overview', overview))..add(DiagnosticsProperty('financialHighlights', financialHighlights))..add(DiagnosticsProperty('riskExplanation', riskExplanation))..add(DiagnosticsProperty('logoUrl', logoUrl))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DealModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.investmentRequired, investmentRequired) || other.investmentRequired == investmentRequired)&&(identical(other.expectedRoi, expectedRoi) || other.expectedRoi == expectedRoi)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.status, status) || other.status == status)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.financialHighlights, financialHighlights) || other.financialHighlights == financialHighlights)&&(identical(other.riskExplanation, riskExplanation) || other.riskExplanation == riskExplanation)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,industry,investmentRequired,expectedRoi,riskLevel,status,overview,financialHighlights,riskExplanation,logoUrl,createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealModel(id: $id, companyName: $companyName, industry: $industry, investmentRequired: $investmentRequired, expectedRoi: $expectedRoi, riskLevel: $riskLevel, status: $status, overview: $overview, financialHighlights: $financialHighlights, riskExplanation: $riskExplanation, logoUrl: $logoUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DealModelCopyWith<$Res> implements $DealModelCopyWith<$Res> {
  factory _$DealModelCopyWith(_DealModel value, $Res Function(_DealModel) _then) = __$DealModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String companyName,@HiveField(2) String industry,@HiveField(3) double investmentRequired,@HiveField(4) double expectedRoi,@HiveField(5) String riskLevel,@HiveField(6) String status,@HiveField(7) String overview,@HiveField(8) String financialHighlights,@HiveField(9) String riskExplanation,@HiveField(10) String? logoUrl,@HiveField(11) DateTime? createdAt
});




}
/// @nodoc
class __$DealModelCopyWithImpl<$Res>
    implements _$DealModelCopyWith<$Res> {
  __$DealModelCopyWithImpl(this._self, this._then);

  final _DealModel _self;
  final $Res Function(_DealModel) _then;

/// Create a copy of DealModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyName = null,Object? industry = null,Object? investmentRequired = null,Object? expectedRoi = null,Object? riskLevel = null,Object? status = null,Object? overview = null,Object? financialHighlights = null,Object? riskExplanation = null,Object? logoUrl = freezed,Object? createdAt = freezed,}) {
  return _then(_DealModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,investmentRequired: null == investmentRequired ? _self.investmentRequired : investmentRequired // ignore: cast_nullable_to_non_nullable
as double,expectedRoi: null == expectedRoi ? _self.expectedRoi : expectedRoi // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,financialHighlights: null == financialHighlights ? _self.financialHighlights : financialHighlights // ignore: cast_nullable_to_non_nullable
as String,riskExplanation: null == riskExplanation ? _self.riskExplanation : riskExplanation // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
