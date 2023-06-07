import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Поиск"),
    );
  }
}
