import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_app_food/routes/app_router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MainRoute(),
        SearchRoute(),
        CartRoute(),
        AccountRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) =>
        BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Главная',
              icon: Icon(Icons.ac_unit, color: Colors.black,)
            ),
            BottomNavigationBarItem(
              label: 'Поиск',
              icon: Icon(Icons.ac_unit, color: Colors.black,)
            ),
            BottomNavigationBarItem(
              label: 'Корзина',
              icon: Icon(Icons.ac_unit, color: Colors.black,)
            ),
            BottomNavigationBarItem(
              label: 'Аккаунт',
              icon: Icon(Icons.ac_unit, color: Colors.black,)
            )
          ]
        ),
    );
  }
}
