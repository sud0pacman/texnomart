part of 'all_category_bloc.dart';

class AllCategoryState {
  final List<GetCatalogMenu> catalogMenu;
  final bool loading;

  AllCategoryState({
    required this.catalogMenu,
    required this.loading,
  });

  AllCategoryState copyWith(
          {List<GetCatalogMenu>? catalogMenu, bool? loading}) =>
      AllCategoryState(
          catalogMenu: catalogMenu ?? this.catalogMenu,
          loading: loading ?? this.loading);
}
