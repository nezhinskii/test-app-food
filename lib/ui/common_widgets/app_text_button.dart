import 'package:flutter/material.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const AppTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(double.infinity, 0)),
            backgroundColor: MaterialStateProperty.all(AppColors.main),
            shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                )
            )
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            text,
            style: AppTextStyles.fontW500.copyWith(color: Colors.white, fontSize: 16),
          ),
        )
    );
  }
}