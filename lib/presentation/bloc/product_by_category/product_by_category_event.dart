part of 'product_by_category_bloc.dart';

abstract class ProductByCategoryEvent {}

class LoadProductByCategoryEvent extends ProductByCategoryEvent {
  final String slug;

  LoadProductByCategoryEvent({required this.slug});
}

class Back extends ProductByCategoryEvent {}

class ClickProductEvent extends ProductByCategoryEvent {}

class CLickLikedEvent extends ProductByCategoryEvent {
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
