import 'package:auto_route/auto_route.dart';
import 'package:test_app_food/routes/app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CategoryRoute.page),
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
      children: [
        AutoRoute(
          page: NestedRoute.page,
          children: [
            AutoRoute(page: MainRoute.page, initial: true),
            AutoRoute(page: CategoryRoute.page)
          ]
        ),
        AutoRoute(page: SearchRoute.page,),
        AutoRoute(page: CartRoute.page,),
        AutoRoute(page: AccountRoute.page,),
      ]
    ),
  ];
}

@RoutePage()
class NestedPage extends AutoRouter {}