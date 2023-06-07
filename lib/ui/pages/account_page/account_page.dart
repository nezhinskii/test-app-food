import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Аккаунт"),
    );
  }
}
