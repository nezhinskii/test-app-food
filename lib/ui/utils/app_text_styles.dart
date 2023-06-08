import 'package:flutter/cupertino.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

abstract class AppTextStyles{
  static const fontW500 = TextStyle(
      color: AppColors.mainFont,
      fontWeight: FontWeight.w500,
      fontSize: 18
  );
  static const fontW400 = TextStyle(
      color: AppColors.mainFont,
      fontWeight: FontWeight.w400,
      fontSize: 14
  );
  static const date = TextStyle(
    color: AppColors.fontWithOpacity5,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const dishWeight = TextStyle(
    color: AppColors.fontWithOpacity4,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const dishDescription = TextStyle(
    color: AppColors.fontWithOpacity65,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
}