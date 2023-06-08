import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/ui/pages/category_page/cubit/category_cubit.dart';
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
      child: InkWell(
        onTap: isActive ? null
        : () {
          context.read<CategoryCubit>().changeTag(tag);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: isActive ? AppColors.main : AppColors.secondBackground
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Text(tag,
            style: isActive ? AppTextStyles.fontW400.copyWith(color: Colors.white) : AppTextStyles.fontW400,
          )
        ),
      ),
    );
  }
}
