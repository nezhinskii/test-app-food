import 'package:flutter/material.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: AppColors.inactive,
      backgroundImage: AssetImage('assets/images/avatar.png'),
    );
  }
}
