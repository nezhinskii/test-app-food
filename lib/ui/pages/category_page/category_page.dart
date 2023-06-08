import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_food/dependencies/repositories.dart';
import 'package:test_app_food/domain/models/category.dart';
import 'package:test_app_food/ui/common_widgets/avatar.dart';
import 'package:test_app_food/ui/pages/category_page/cubit/category_cubit.dart';
import 'package:test_app_food/ui/pages/category_page/widget/dish_tile.dart';
import 'package:test_app_food/ui/pages/category_page/widget/tag_tile.dart';
import 'package:test_app_food/ui/utils/app_colors.dart';
import 'package:test_app_food/ui/utils/app_text_styles.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(category.name, style: AppTextStyles.fontW500,),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios, color: AppColors.icons, size: 18,),
          onPressed: () {
            context.router.pop();
          },
        ),
        actions: const [
          Avatar(),
          SizedBox(width: 16,)
        ],
      ),
      body: BlocProvider<CategoryCubit>(
        create: (context) => CategoryCubit(Repositories.dishesRepository())..getDishes(),
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.main,
                ),
              ),
              success: (dishes, tags, selectedTag) => SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 45,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          if (index == 0 || index == tags.length + 1){
                            return const SizedBox(width: 13,);
                          }
                          return TagTile(tag: tags[index - 1], isActive: tags[index - 1] == selectedTag,);
                        },
                        itemCount: tags.length + 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 110/150
                        ),
                        itemCount: dishes.length,
                        itemBuilder: (context, index) {
                          return DishTile(dish: dishes[index]);
                        },
                      ),
                    )
                  ],
                ),
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
    );
  }
}
