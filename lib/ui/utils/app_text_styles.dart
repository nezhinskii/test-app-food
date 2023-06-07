import 'package:flutter/cupertino.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

abstract class AppTextStyles{
  static const main500 = TextStyle(
      color: AppColors.mainFont,
      fontWeight: FontWeight.w500,
      fontSize: 18
  );
  static const date = TextStyle(
    color: AppColors.fontWithOpacity,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
}