part of 'product_by_category_bloc.dart';

class ProductByCategoryState {
  final List<MyProductData> filteredProduct;
  final List<Category> cheeps;
  final bool isBack;
  final List<BookmarkData> bookMarks;
  final bool loading;

  ProductByCategoryState(
      {required this.filteredProduct,
      required this.isBack,
      required this.bookMarks,
      required this.loading,
      required this.cheeps});

  ProductByCategoryState copyWith({
    List<MyProductData>? filteredProduct,
    bool? isBack,
    List<BookmarkData>? bookMarks,
    bool? loading,
    List<Category>? cheeps,
  }) =>
      ProductByCategoryState(
        filteredProduct: filteredProduct ?? this.filteredProduct,
        isBack: isBack ?? this.isBack,
        bookMarks: bookMarks ?? this.bookMarks,
        loading: loading ?? this.loading,
        cheeps: cheeps ?? this.cheeps,
      );
}
