// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<Dish, int> cartItems, double orderPrice)
        keeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<Dish, int> cartItems, double orderPrice)? keeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<Dish, int> cartItems, double orderPrice)? keeping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Keeping value) keeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Keeping value)? keeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Keeping value)? keeping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'CartState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<Dish, int> cartItems, double orderPrice)
        keeping,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<Dish, int> cartItems, double orderPrice)? keeping,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<Dish, int> cartItems, double orderPrice)? keeping,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Keeping value) keeping,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Keeping value)? keeping,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Keeping value)? keeping,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements CartState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_KeepingCopyWith<$Res> {
  factory _$$_KeepingCopyWith(
          _$_Keeping value, $Res Function(_$_Keeping) then) =
      __$$_KeepingCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<Dish, int> cartItems, double orderPrice});
}

/// @nodoc
class __$$_KeepingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Keeping>
    implements _$$_KeepingCopyWith<$Res> {
  __$$_KeepingCopyWithImpl(_$_Keeping _value, $Res Function(_$_Keeping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? orderPrice = null,
  }) {
    return _then(_$_Keeping(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<Dish, int>,
      null == orderPrice
          ? _value.orderPrice
          : orderPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Keeping implements _Keeping {
  const _$_Keeping(final Map<Dish, int> cartItems, this.orderPrice)
      : _cartItems = cartItems;

  final Map<Dish, int> _cartItems;
  @override
  Map<Dish, int> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final double orderPrice;

  @override
  String toString() {
    return 'CartState.keeping(cartItems: $cartItems, orderPrice: $orderPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Keeping &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.orderPrice, orderPrice) ||
                other.orderPrice == orderPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartItems), orderPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeepingCopyWith<_$_Keeping> get copyWith =>
      __$$_KeepingCopyWithImpl<_$_Keeping>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<Dish, int> cartItems, double orderPrice)
        keeping,
  }) {
    return keeping(cartItems, orderPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<Dish, int> cartItems, double orderPrice)? keeping,
  }) {
    return keeping?.call(cartItems, orderPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<Dish, int> cartItems, double orderPrice)? keeping,
    required TResult orElse(),
  }) {
    if (keeping != null) {
      return keeping(cartItems, orderPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Keeping value) keeping,
  }) {
    return keeping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Keeping value)? keeping,
  }) {
    return keeping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Keeping value)? keeping,
    required TResult orElse(),
  }) {
    if (keeping != null) {
      return keeping(this);
    }
    return orElse();
  }
}

abstract class _Keeping implements CartState {
  const factory _Keeping(
      final Map<Dish, int> cartItems, final double orderPrice) = _$_Keeping;

  Map<Dish, int> get cartItems;
  double get orderPrice;
  @JsonKey(ignore: true)
  _$$_KeepingCopyWith<_$_Keeping> get copyWith =>
      throw _privateConstructorUsedError;
}
