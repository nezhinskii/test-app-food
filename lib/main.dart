import 'package:flutter/material.dart';
import 'package:test_app_food/routes/app_router.dart';
import 'package:test_app_food/ui/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'SF-Pro-Display',
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
