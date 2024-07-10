part of 'inner_category_products_bloc.dart';


abstract class InnerCategoryProductsEvent {}

class LoadDataEvent extends InnerCategoryProductsEvent {
  final String slug;

  LoadDataEvent({required this.slug});
}

class CLickLikedEvent extends InnerCategoryProductsEvent {
  final int id;
  final bool isLike;
  final String name;
  final int cost;
  final String img;

  CLickLikedEvent(
      {required this.id,
        required this.isLike,
        required this.name,
        required this.cost,
        required this.img});
}