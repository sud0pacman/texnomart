part of 'inner_category_products_bloc.dart';

class InnerCategoryProductsState {
  final bool isLoading;
  final List<Product> products;
  final List<Parent> categories;
  final List<BookmarkData> likes;

  InnerCategoryProductsState({required this.isLoading, required this.products, required this.categories, required this.likes});

  InnerCategoryProductsState copyWith(
          {bool? isLoading, List<Product>? products, List<Parent>? categories, List<BookmarkData>? likes}) =>
      InnerCategoryProductsState(
          isLoading: isLoading ?? this.isLoading,
          products: products ?? this.products,
        categories:  categories ?? this.categories,
        likes: likes ?? this.likes
      );
}
