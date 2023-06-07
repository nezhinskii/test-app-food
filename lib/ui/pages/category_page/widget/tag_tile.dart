import 'package:flutter/material.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class TagTile extends StatelessWidget {
  final Tag tag;
  final bool isActive;
  const TagTile({Key? key, required this.tag, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 3),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isActive ? AppColors.main : AppColors.secondBackground
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Text(tag,
          style: isActive ? AppTextStyles.fontW400.copyWith(color: Colors.white) : AppTextStyles.fontW400,
        )
      ),
    );
  }
}
