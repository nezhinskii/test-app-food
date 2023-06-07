// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:test_app_food/domain/models/category.dart' as _i10;
import 'package:test_app_food/routes/app_router.dart' as _i1;
import 'package:test_app_food/ui/pages/account_page/account_page.dart' as _i2;
import 'package:test_app_food/ui/pages/cart_page/cart_page.dart' as _i3;
import 'package:test_app_food/ui/pages/category_page/category_page.dart' as _i4;
import 'package:test_app_food/ui/pages/home.dart' as _i5;
import 'package:test_app_food/ui/pages/main_page/main_page.dart' as _i6;
import 'package:test_app_food/ui/pages/search_page/search_page.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    NestedRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.NestedPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CartPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CategoryPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SearchPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.NestedPage]
class NestedRoute extends _i8.PageRouteInfo<void> {
  const NestedRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NestedRoute.name,
          initialChildren: children,
        );

  static const String name = 'NestedRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccountPage]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CartPage]
class CartRoute extends _i8.PageRouteInfo<void> {
  const CartRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryPage]
class CategoryRoute extends _i8.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    _i9.Key? key,
    required _i10.Category category,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i8.PageInfo<CategoryRouteArgs> page =
      _i8.PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    required this.category,
  });

  final _i9.Key? key;

  final _i10.Category category;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
