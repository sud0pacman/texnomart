part of 'product_by_category_bloc.dart';


class ProductByCategoryState {
  final ProductAllCategory? filteredProduct;
  final bool isBack;
  final List<BookmarkData> likes;
  final bool loading;

  ProductByCategoryState({required this.filteredProduct, required this.isBack, required this.likes, required  this.loading});

  ProductByCategoryState copyWith({
    ProductAllCategory? filteredProduct,
    bool? isBack,
    List<BookmarkData>? likes,
    bool? loading,
  }) => ProductByCategoryState(
    filteredProduct: filteredProduct ?? this.filteredProduct,
    isBack: isBack ?? this.isBack,
    likes: likes ?? this.likes,
      loading: loading ?? this.loading,
  );
}