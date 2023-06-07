
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_food/ui/common_widgets/avatar.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

class CommonAppBar extends AppBar {
  CommonAppBar({super.key}) : super(
    backgroundColor: AppColors.background,
    elevation: 0,
    titleSpacing: 16,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/icons/geo.svg',
          height: 24,
          colorFilter: const ColorFilter.mode(AppColors.icons, BlendMode.srcIn),
        ),
        const SizedBox(width: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text("Санкт-Петербург", style: AppTextStyles.main500,),
            Text("12 Августа, 2023", style: AppTextStyles.date,)
          ],
        ),
      ],
    ),
    actions: const [
      Avatar(),
      SizedBox(width: 16,),
    ],
  );
}