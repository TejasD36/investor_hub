// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InterestsEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InterestsEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterestsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InterestsEvent()';
}


}

/// @nodoc
class $InterestsEventCopyWith<$Res>  {
$InterestsEventCopyWith(InterestsEvent _, $Res Function(InterestsEvent) __);
}


/// Adds pattern-matching-related methods to [InterestsEvent].
extension InterestsEventPatterns on InterestsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadInterests value)?  loadInterests,TResult Function( _AddInterest value)?  addInterest,TResult Function( _RemoveInterest value)?  removeInterest,TResult Function( _RefreshInterests value)?  refreshInterests,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadInterests() when loadInterests != null:
return loadInterests(_that);case _AddInterest() when addInterest != null:
return addInterest(_that);case _RemoveInterest() when removeInterest != null:
return removeInterest(_that);case _RefreshInterests() when refreshInterests != null:
return refreshInterests(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadInterests value)  loadInterests,required TResult Function( _AddInterest value)  addInterest,required TResult Function( _RemoveInterest value)  removeInterest,required TResult Function( _RefreshInterests value)  refreshInterests,}){
final _that = this;
switch (_that) {
case _LoadInterests():
return loadInterests(_that);case _AddInterest():
return addInterest(_that);case _RemoveInterest():
return removeInterest(_that);case _RefreshInterests():
return refreshInterests(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadInterests value)?  loadInterests,TResult? Function( _AddInterest value)?  addInterest,TResult? Function( _RemoveInterest value)?  removeInterest,TResult? Function( _RefreshInterests value)?  refreshInterests,}){
final _that = this;
switch (_that) {
case _LoadInterests() when loadInterests != null:
return loadInterests(_that);case _AddInterest() when addInterest != null:
return addInterest(_that);case _RemoveInterest() when removeInterest != null:
return removeInterest(_that);case _RefreshInterests() when refreshInterests != null:
return refreshInterests(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadInterests,TResult Function( DealModel deal)?  addInterest,TResult Function( String dealId)?  removeInterest,TResult Function()?  refreshInterests,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadInterests() when loadInterests != null:
return loadInterests();case _AddInterest() when addInterest != null:
return addInterest(_that.deal);case _RemoveInterest() when removeInterest != null:
return removeInterest(_that.dealId);case _RefreshInterests() when refreshInterests != null:
return refreshInterests();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadInterests,required TResult Function( DealModel deal)  addInterest,required TResult Function( String dealId)  removeInterest,required TResult Function()  refreshInterests,}) {final _that = this;
switch (_that) {
case _LoadInterests():
return loadInterests();case _AddInterest():
return addInterest(_that.deal);case _RemoveInterest():
return removeInterest(_that.dealId);case _RefreshInterests():
return refreshInterests();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadInterests,TResult? Function( DealModel deal)?  addInterest,TResult? Function( String dealId)?  removeInterest,TResult? Function()?  refreshInterests,}) {final _that = this;
switch (_that) {
case _LoadInterests() when loadInterests != null:
return loadInterests();case _AddInterest() when addInterest != null:
return addInterest(_that.deal);case _RemoveInterest() when removeInterest != null:
return removeInterest(_that.dealId);case _RefreshInterests() when refreshInterests != null:
return refreshInterests();case _:
  return null;

}
}

}

/// @nodoc


class _LoadInterests with DiagnosticableTreeMixin implements InterestsEvent {
  const _LoadInterests();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InterestsEvent.loadInterests'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadInterests);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InterestsEvent.loadInterests()';
}


}




/// @nodoc


class _AddInterest with DiagnosticableTreeMixin implements InterestsEvent {
  const _AddInterest({required this.deal});
  

 final  DealModel deal;

/// Create a copy of InterestsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddInterestCopyWith<_AddInterest> get copyWith => __$AddInterestCopyWithImpl<_AddInterest>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InterestsEvent.addInterest'))
    ..add(DiagnosticsProperty('deal', deal));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddInterest&&(identical(other.deal, deal) || other.deal == deal));
}


@override
int get hashCode => Object.hash(runtimeType,deal);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InterestsEvent.addInterest(deal: $deal)';
}


}

/// @nodoc
abstract mixin class _$AddInterestCopyWith<$Res> implements $InterestsEventCopyWith<$Res> {
  factory _$AddInterestCopyWith(_AddInterest value, $Res Function(_AddInterest) _then) = __$AddInterestCopyWithImpl;
@useResult
$Res call({
 DealModel deal
});


$DealModelCopyWith<$Res> get deal;

}
/// @nodoc
class __$AddInterestCopyWithImpl<$Res>
    implements _$AddInterestCopyWith<$Res> {
  __$AddInterestCopyWithImpl(this._self, this._then);

  final _AddInterest _self;
  final $Res Function(_AddInterest) _then;

/// Create a copy of InterestsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deal = null,}) {
  return _then(_AddInterest(
deal: null == deal ? _self.deal : deal // ignore: cast_nullable_to_non_nullable
as DealModel,
  ));
}

/// Create a copy of InterestsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DealModelCopyWith<$Res> get deal {
  
  return $DealModelCopyWith<$Res>(_self.deal, (value) {
    return _then(_self.copyWith(deal: value));
  });
}
}

/// @nodoc


class _RemoveInterest with DiagnosticableTreeMixin implements InterestsEvent {
  const _RemoveInterest({required this.dealId});
  

 final  String dealId;

/// Create a copy of InterestsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveInterestCopyWith<_RemoveInterest> get copyWith => __$RemoveInterestCopyWithImpl<_RemoveInterest>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InterestsEvent.removeInterest'))
    ..add(DiagnosticsProperty('dealId', dealId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveInterest&&(identical(other.dealId, dealId) || other.dealId == dealId));
}


@override
int get hashCode => Object.hash(runtimeType,dealId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InterestsEvent.removeInterest(dealId: $dealId)';
}


}

/// @nodoc
abstract mixin class _$RemoveInterestCopyWith<$Res> implements $InterestsEventCopyWith<$Res> {
  factory _$RemoveInterestCopyWith(_RemoveInterest value, $Res Function(_RemoveInterest) _then) = __$RemoveInterestCopyWithImpl;
@useResult
$Res call({
 String dealId
});




}
/// @nodoc
class __$RemoveInterestCopyWithImpl<$Res>
    implements _$RemoveInterestCopyWith<$Res> {
  __$RemoveInterestCopyWithImpl(this._self, this._then);

  final _RemoveInterest _self;
  final $Res Function(_RemoveInterest) _then;

/// Create a copy of InterestsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dealId = null,}) {
  return _then(_RemoveInterest(
dealId: null == dealId ? _self.dealId : dealId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RefreshInterests with DiagnosticableTreeMixin implements InterestsEvent {
  const _RefreshInterests();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InterestsEvent.refreshInterests'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshInterests);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InterestsEvent.refreshInterests()';
}


}




// dart format on
