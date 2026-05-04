// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DealFilter {

 double? get minRoi; double? get maxRoi; RiskLevel? get risk; Industry? get industry; DealStatus? get status;
/// Create a copy of DealFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DealFilterCopyWith<DealFilter> get copyWith => _$DealFilterCopyWithImpl<DealFilter>(this as DealFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DealFilter&&(identical(other.minRoi, minRoi) || other.minRoi == minRoi)&&(identical(other.maxRoi, maxRoi) || other.maxRoi == maxRoi)&&(identical(other.risk, risk) || other.risk == risk)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,minRoi,maxRoi,risk,industry,status);

@override
String toString() {
  return 'DealFilter(minRoi: $minRoi, maxRoi: $maxRoi, risk: $risk, industry: $industry, status: $status)';
}


}

/// @nodoc
abstract mixin class $DealFilterCopyWith<$Res>  {
  factory $DealFilterCopyWith(DealFilter value, $Res Function(DealFilter) _then) = _$DealFilterCopyWithImpl;
@useResult
$Res call({
 double? minRoi, double? maxRoi, RiskLevel? risk, Industry? industry, DealStatus? status
});




}
/// @nodoc
class _$DealFilterCopyWithImpl<$Res>
    implements $DealFilterCopyWith<$Res> {
  _$DealFilterCopyWithImpl(this._self, this._then);

  final DealFilter _self;
  final $Res Function(DealFilter) _then;

/// Create a copy of DealFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minRoi = freezed,Object? maxRoi = freezed,Object? risk = freezed,Object? industry = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
minRoi: freezed == minRoi ? _self.minRoi : minRoi // ignore: cast_nullable_to_non_nullable
as double?,maxRoi: freezed == maxRoi ? _self.maxRoi : maxRoi // ignore: cast_nullable_to_non_nullable
as double?,risk: freezed == risk ? _self.risk : risk // ignore: cast_nullable_to_non_nullable
as RiskLevel?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as Industry?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DealStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [DealFilter].
extension DealFilterPatterns on DealFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DealFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DealFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DealFilter value)  $default,){
final _that = this;
switch (_that) {
case _DealFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DealFilter value)?  $default,){
final _that = this;
switch (_that) {
case _DealFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? minRoi,  double? maxRoi,  RiskLevel? risk,  Industry? industry,  DealStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DealFilter() when $default != null:
return $default(_that.minRoi,_that.maxRoi,_that.risk,_that.industry,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? minRoi,  double? maxRoi,  RiskLevel? risk,  Industry? industry,  DealStatus? status)  $default,) {final _that = this;
switch (_that) {
case _DealFilter():
return $default(_that.minRoi,_that.maxRoi,_that.risk,_that.industry,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? minRoi,  double? maxRoi,  RiskLevel? risk,  Industry? industry,  DealStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _DealFilter() when $default != null:
return $default(_that.minRoi,_that.maxRoi,_that.risk,_that.industry,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _DealFilter implements DealFilter {
  const _DealFilter({this.minRoi, this.maxRoi, this.risk, this.industry, this.status});
  

@override final  double? minRoi;
@override final  double? maxRoi;
@override final  RiskLevel? risk;
@override final  Industry? industry;
@override final  DealStatus? status;

/// Create a copy of DealFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DealFilterCopyWith<_DealFilter> get copyWith => __$DealFilterCopyWithImpl<_DealFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DealFilter&&(identical(other.minRoi, minRoi) || other.minRoi == minRoi)&&(identical(other.maxRoi, maxRoi) || other.maxRoi == maxRoi)&&(identical(other.risk, risk) || other.risk == risk)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,minRoi,maxRoi,risk,industry,status);

@override
String toString() {
  return 'DealFilter(minRoi: $minRoi, maxRoi: $maxRoi, risk: $risk, industry: $industry, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DealFilterCopyWith<$Res> implements $DealFilterCopyWith<$Res> {
  factory _$DealFilterCopyWith(_DealFilter value, $Res Function(_DealFilter) _then) = __$DealFilterCopyWithImpl;
@override @useResult
$Res call({
 double? minRoi, double? maxRoi, RiskLevel? risk, Industry? industry, DealStatus? status
});




}
/// @nodoc
class __$DealFilterCopyWithImpl<$Res>
    implements _$DealFilterCopyWith<$Res> {
  __$DealFilterCopyWithImpl(this._self, this._then);

  final _DealFilter _self;
  final $Res Function(_DealFilter) _then;

/// Create a copy of DealFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minRoi = freezed,Object? maxRoi = freezed,Object? risk = freezed,Object? industry = freezed,Object? status = freezed,}) {
  return _then(_DealFilter(
minRoi: freezed == minRoi ? _self.minRoi : minRoi // ignore: cast_nullable_to_non_nullable
as double?,maxRoi: freezed == maxRoi ? _self.maxRoi : maxRoi // ignore: cast_nullable_to_non_nullable
as double?,risk: freezed == risk ? _self.risk : risk // ignore: cast_nullable_to_non_nullable
as RiskLevel?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as Industry?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DealStatus?,
  ));
}


}

// dart format on
