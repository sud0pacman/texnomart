part of 'basket_bloc.dart';


abstract class BasketEvent {}

class BasketLoadProductsEvents extends BasketEvent{}
class BasketDeleteProductEven extends BasketEvent {
  final BookmarkData product;

  BasketDeleteProductEven({required this.product,});
}

class ClickMinusEvent extends BasketEvent {
  final int id;
  final int count;

  ClickMinusEvent({required this.id, required this.count});
}

class ClickPlusEvent extends BasketEvent {
  final int id;
  final int count;

  ClickPlusEvent({required this.id, required this.count});
}

class ClickLiked extends BasketEvent {
  final int id;
  final bool isLiked;

  ClickLiked({required this.isLiked, required this.id});
}