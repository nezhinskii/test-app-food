import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_food/dependencies/repositories.dart';
import 'package:test_app_food/ui/common_widgets/common_app_bar.dart';
import 'package:test_app_food/ui/pages/main_page/cubit/main_cubit.dart';
import 'package:test_app_food/ui/pages/main_page/widgets/category_tile.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(),
        backgroundColor: AppColors.background,
        body: BlocProvider<MainCubit>(
          create: (context) => MainCubit(Repositories.categoriesRepository())..getCategories(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<MainCubit, MainState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.main,
                    ),
                  ),
                  success: (categories) => ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, index) {
                      return CategoryTile(category: categories[index]);
                    },
                    itemCount: categories.length,
                  ),
                  error: (message) => Center(
                    child: Text(
                      message,
                      style: AppTextStyles.fontW500,
                      textAlign: TextAlign.center,
                    ),
                  )
                );
              },
            ),
          ),
        )
    );
  }
}
