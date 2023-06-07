import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_food/domain/models/dish.dart';
import 'package:test_app_food/domain/repositories/dishes_repository.dart';
import 'package:test_app_food/ui/utils/app_strings.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._dishesRepository) : super(const CategoryState.loading());

  final DishesRepository _dishesRepository;
  late List<Dish> _dishes;
  late List<Tag> _tags;
  static const Tag _defaultTag ='Все меню';

  void getDishes() async {
    try{
      _dishes = await _dishesRepository.getDishes();
      final Set<Tag> tags = {};
      for (var dish in _dishes) {
        for (var tag in dish.tags) {
          tags.add(tag);
        }
      }
      _tags = tags.toList();
      emit(
        CategoryState.success(
          _dishes.where((dish) => dish.tags.contains(_defaultTag)).toList(),
          _tags,
          _defaultTag
        )
      );
    } on DioException {
      emit(const CategoryState.error(AppStrings.networkError));
    }
  }
}
