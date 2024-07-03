part of 'product_by_category_bloc.dart';


class ProductByCategoryState {
  final ProductAllCategory? filteredProduct;
  final bool isBack;

  ProductByCategoryState({required this.filteredProduct, required this.isBack});

  ProductByCategoryState copyWith({
    ProductAllCategory? filteredProduct,
    bool? isBack,
  }) => ProductByCategoryState(
    filteredProduct: filteredProduct ?? this.filteredProduct,
    isBack: isBack ?? this.isBack,
  );
}