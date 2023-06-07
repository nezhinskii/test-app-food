import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_food/routes/app_router.gr.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String _accountIconPath = 'assets/icons/account.svg';
  static const String _cartIconPath = 'assets/icons/cart.svg';
  static const String _homeIconPath = 'assets/icons/home.svg';
  static const String _searchIconPath = 'assets/icons/search.svg';
  static const _inactiveFilter = ColorFilter.mode(AppColors.inactive, BlendMode.srcIn);
  static const _activeFilter = ColorFilter.mode(AppColors.main, BlendMode.srcIn);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: AppColors.background,
      routes: const [
        MainRoute(),
        SearchRoute(),
        CartRoute(),
        AccountRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) =>
        BottomNavigationBar(
          backgroundColor: AppColors.background,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.main,
          unselectedItemColor: AppColors.inactive,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Главная',
              icon: SvgPicture.asset(_homeIconPath, colorFilter: _inactiveFilter,),
              activeIcon: SvgPicture.asset(_homeIconPath, colorFilter: _activeFilter)
            ),
            BottomNavigationBarItem(
              label: 'Поиск',
              icon: SvgPicture.asset(_searchIconPath, colorFilter: _inactiveFilter,),
              activeIcon: SvgPicture.asset(_searchIconPath, colorFilter: _activeFilter)
            ),
            BottomNavigationBarItem(
              label: 'Корзина',
              icon: SvgPicture.asset(_cartIconPath, colorFilter: _inactiveFilter,),
              activeIcon: SvgPicture.asset(_cartIconPath, colorFilter: _activeFilter)
            ),
            BottomNavigationBarItem(
              label: 'Аккаунт',
              icon: SvgPicture.asset(_accountIconPath, colorFilter: _inactiveFilter,),
              activeIcon: SvgPicture.asset(_accountIconPath, colorFilter: _activeFilter)
            )
          ]
        ),
    );
  }
}
