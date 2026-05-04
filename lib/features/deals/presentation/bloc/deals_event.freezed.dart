// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deals_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DealsEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealsEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DealsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealsEvent()';
}


}

/// @nodoc
class $DealsEventCopyWith<$Res>  {
$DealsEventCopyWith(DealsEvent _, $Res Function(DealsEvent) __);
}


/// Adds pattern-matching-related methods to [DealsEvent].
extension DealsEventPatterns on DealsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchDeals value)?  fetchDeals,TResult Function( _SearchDeals value)?  searchDeals,TResult Function( _FilterDeals value)?  filterDeals,TResult Function( _ResetDeals value)?  resetDeals,TResult Function( _ApplyFilter value)?  applyFilter,TResult Function( _ClearFilter value)?  clearFilter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchDeals() when fetchDeals != null:
return fetchDeals(_that);case _SearchDeals() when searchDeals != null:
return searchDeals(_that);case _FilterDeals() when filterDeals != null:
return filterDeals(_that);case _ResetDeals() when resetDeals != null:
return resetDeals(_that);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that);case _ClearFilter() when clearFilter != null:
return clearFilter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchDeals value)  fetchDeals,required TResult Function( _SearchDeals value)  searchDeals,required TResult Function( _FilterDeals value)  filterDeals,required TResult Function( _ResetDeals value)  resetDeals,required TResult Function( _ApplyFilter value)  applyFilter,required TResult Function( _ClearFilter value)  clearFilter,}){
final _that = this;
switch (_that) {
case _FetchDeals():
return fetchDeals(_that);case _SearchDeals():
return searchDeals(_that);case _FilterDeals():
return filterDeals(_that);case _ResetDeals():
return resetDeals(_that);case _ApplyFilter():
return applyFilter(_that);case _ClearFilter():
return clearFilter(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchDeals value)?  fetchDeals,TResult? Function( _SearchDeals value)?  searchDeals,TResult? Function( _FilterDeals value)?  filterDeals,TResult? Function( _ResetDeals value)?  resetDeals,TResult? Function( _ApplyFilter value)?  applyFilter,TResult? Function( _ClearFilter value)?  clearFilter,}){
final _that = this;
switch (_that) {
case _FetchDeals() when fetchDeals != null:
return fetchDeals(_that);case _SearchDeals() when searchDeals != null:
return searchDeals(_that);case _FilterDeals() when filterDeals != null:
return filterDeals(_that);case _ResetDeals() when resetDeals != null:
return resetDeals(_that);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that);case _ClearFilter() when clearFilter != null:
return clearFilter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchDeals,TResult Function( String query)?  searchDeals,TResult Function( double? minRoi,  double? maxRoi,  String? riskLevel,  String? industry,  String? status)?  filterDeals,TResult Function()?  resetDeals,TResult Function( DealFilter filter)?  applyFilter,TResult Function()?  clearFilter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchDeals() when fetchDeals != null:
return fetchDeals();case _SearchDeals() when searchDeals != null:
return searchDeals(_that.query);case _FilterDeals() when filterDeals != null:
return filterDeals(_that.minRoi,_that.maxRoi,_that.riskLevel,_that.industry,_that.status);case _ResetDeals() when resetDeals != null:
return resetDeals();case _ApplyFilter() when applyFilter != null:
return applyFilter(_that.filter);case _ClearFilter() when clearFilter != null:
return clearFilter();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchDeals,required TResult Function( String query)  searchDeals,required TResult Function( double? minRoi,  double? maxRoi,  String? riskLevel,  String? industry,  String? status)  filterDeals,required TResult Function()  resetDeals,required TResult Function( DealFilter filter)  applyFilter,required TResult Function()  clearFilter,}) {final _that = this;
switch (_that) {
case _FetchDeals():
return fetchDeals();case _SearchDeals():
return searchDeals(_that.query);case _FilterDeals():
return filterDeals(_that.minRoi,_that.maxRoi,_that.riskLevel,_that.industry,_that.status);case _ResetDeals():
return resetDeals();case _ApplyFilter():
return applyFilter(_that.filter);case _ClearFilter():
return clearFilter();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchDeals,TResult? Function( String query)?  searchDeals,TResult? Function( double? minRoi,  double? maxRoi,  String? riskLevel,  String? industry,  String? status)?  filterDeals,TResult? Function()?  resetDeals,TResult? Function( DealFilter filter)?  applyFilter,TResult? Function()?  clearFilter,}) {final _that = this;
switch (_that) {
case _FetchDeals() when fetchDeals != null:
return fetchDeals();case _SearchDeals() when searchDeals != null:
return searchDeals(_that.query);case _FilterDeals() when filterDeals != null:
return filterDeals(_that.minRoi,_that.maxRoi,_that.riskLevel,_that.industry,_that.status);case _ResetDeals() when resetDeals != null:
return resetDeals();case _ApplyFilter() when applyFilter != null:
return applyFilter(_that.filter);case _ClearFilter() when clearFilter != null:
return clearFilter();case _:
  return null;

}
}

}

/// @nodoc


class _FetchDeals with DiagnosticableTreeMixin implements DealsEvent {
  const _FetchDeals();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealsEvent.fetchDeals'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchDeals);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealsEvent.fetchDeals()';
}


}




/// @nodoc


class _SearchDeals with DiagnosticableTreeMixin implements DealsEvent {
  const _SearchDeals({required this.query});
  

 final  String query;

/// Create a copy of DealsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDealsCopyWith<_SearchDeals> get copyWith => __$SearchDealsCopyWithImpl<_SearchDeals>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealsEvent.searchDeals'))
    ..add(DiagnosticsProperty('query', query));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchDeals&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealsEvent.searchDeals(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchDealsCopyWith<$Res> implements $DealsEventCopyWith<$Res> {
  factory _$SearchDealsCopyWith(_SearchDeals value, $Res Function(_SearchDeals) _then) = __$SearchDealsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchDealsCopyWithImpl<$Res>
    implements _$SearchDealsCopyWith<$Res> {
  __$SearchDealsCopyWithImpl(this._self, this._then);

  final _SearchDeals _self;
  final $Res Function(_SearchDeals) _then;

/// Create a copy of DealsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchDeals(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FilterDeals with DiagnosticableTreeMixin implements DealsEvent {
  const _FilterDeals({this.minRoi, this.maxRoi, this.riskLevel, this.industry, this.status});
  

 final  double? minRoi;
 final  double? maxRoi;
 final  String? riskLevel;
 final  String? industry;
 final  String? status;

/// Create a copy of DealsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterDealsCopyWith<_FilterDeals> get copyWith => __$FilterDealsCopyWithImpl<_FilterDeals>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealsEvent.filterDeals'))
    ..add(DiagnosticsProperty('minRoi', minRoi))..add(DiagnosticsProperty('maxRoi', maxRoi))..add(DiagnosticsProperty('riskLevel', riskLevel))..add(DiagnosticsProperty('industry', industry))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterDeals&&(identical(other.minRoi, minRoi) || other.minRoi == minRoi)&&(identical(other.maxRoi, maxRoi) || other.maxRoi == maxRoi)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,minRoi,maxRoi,riskLevel,industry,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealsEvent.filterDeals(minRoi: $minRoi, maxRoi: $maxRoi, riskLevel: $riskLevel, industry: $industry, status: $status)';
}


}

/// @nodoc
abstract mixin class _$FilterDealsCopyWith<$Res> implements $DealsEventCopyWith<$Res> {
  factory _$FilterDealsCopyWith(_FilterDeals value, $Res Function(_FilterDeals) _then) = __$FilterDealsCopyWithImpl;
@useResult
$Res call({
 double? minRoi, double? maxRoi, String? riskLevel, String? industry, String? status
});




}
/// @nodoc
class __$FilterDealsCopyWithImpl<$Res>
    implements _$FilterDealsCopyWith<$Res> {
  __$FilterDealsCopyWithImpl(this._self, this._then);

  final _FilterDeals _self;
  final $Res Function(_FilterDeals) _then;

/// Create a copy of DealsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? minRoi = freezed,Object? maxRoi = freezed,Object? riskLevel = freezed,Object? industry = freezed,Object? status = freezed,}) {
  return _then(_FilterDeals(
minRoi: freezed == minRoi ? _self.minRoi : minRoi // ignore: cast_nullable_to_non_nullable
as double?,maxRoi: freezed == maxRoi ? _self.maxRoi : maxRoi // ignore: cast_nullable_to_non_nullable
as double?,riskLevel: freezed == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ResetDeals with DiagnosticableTreeMixin implements DealsEvent {
  const _ResetDeals();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealsEvent.resetDeals'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetDeals);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealsEvent.resetDeals()';
}


}




/// @nodoc


class _ApplyFilter with DiagnosticableTreeMixin implements DealsEvent {
  const _ApplyFilter({required this.filter});
  

 final  DealFilter filter;

/// Create a copy of DealsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyFilterCopyWith<_ApplyFilter> get copyWith => __$ApplyFilterCopyWithImpl<_ApplyFilter>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealsEvent.applyFilter'))
    ..add(DiagnosticsProperty('filter', filter));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplyFilter&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealsEvent.applyFilter(filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$ApplyFilterCopyWith<$Res> implements $DealsEventCopyWith<$Res> {
  factory _$ApplyFilterCopyWith(_ApplyFilter value, $Res Function(_ApplyFilter) _then) = __$ApplyFilterCopyWithImpl;
@useResult
$Res call({
 DealFilter filter
});


$DealFilterCopyWith<$Res> get filter;

}
/// @nodoc
class __$ApplyFilterCopyWithImpl<$Res>
    implements _$ApplyFilterCopyWith<$Res> {
  __$ApplyFilterCopyWithImpl(this._self, this._then);

  final _ApplyFilter _self;
  final $Res Function(_ApplyFilter) _then;

/// Create a copy of DealsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(_ApplyFilter(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as DealFilter,
  ));
}

/// Create a copy of DealsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DealFilterCopyWith<$Res> get filter {
  
  return $DealFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc


class _ClearFilter with DiagnosticableTreeMixin implements DealsEvent {
  const _ClearFilter();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DealsEvent.clearFilter'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearFilter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DealsEvent.clearFilter()';
}


}




// dart format on
