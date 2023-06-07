part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.success(List<Dish> dishes, List<Tag> tags, Tag selectedTag) = _Success;
  const factory CategoryState.error(String message) = _Error;
}
