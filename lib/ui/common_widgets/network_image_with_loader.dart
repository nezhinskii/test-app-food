import 'package:flutter/material.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

class NetworkImageWithLoader extends StatelessWidget {
  const NetworkImageWithLoader({
    super.key,
    required this.url,
    this.height,
    this.width,
  });
  final double? height;
  final double? width;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.secondBackground
          ),
          height: height,
          width: width,
          child: Center(
            child:
            CircularProgressIndicator(
              color: AppColors.main,
              value: loadingProgress.expectedTotalBytes == null ?
              null : loadingProgress.cumulativeBytesLoaded/loadingProgress.expectedTotalBytes!,
            ),
          ),
        );
      },
    );
  }
}
