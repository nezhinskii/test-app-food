import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_food/domain/models/category.dart';
import 'package:test_app_food/domain/repositories/categories_repository.dart';
import 'package:test_app_food/ui/utils/app_strings.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this._categoriesRepository) : super(const MainState.loading());

  final CategoriesRepository _categoriesRepository;

  void getCategories() async {
    try{
      final categories = await _categoriesRepository.getCategories();
      emit(MainState.success(categories));
    } on DioException {
      emit(const MainState.error(AppStrings.networkError));
    }
  }
}
