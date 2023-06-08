import 'package:flutter/material.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

class SmallCardButton extends StatelessWidget {
  final Widget child;
  final Function()? action;
  const SmallCardButton({Key? key, required this.child, this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: AppColors.background
        ),
        padding: const EdgeInsets.all(7),
        child: child,
      ),
    );
  }
}
