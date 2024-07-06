part of 'basket_bloc.dart';

class BasketState {
  final List<BookmarkData> basket;
  final BookmarkData? remove;
  final bool isUpdate;

  BasketState(
      {
      required this.basket,
      required this.remove,
      required this.isUpdate});

  BasketState copyWith(
          {
          List<BookmarkData>? basket,
            BookmarkData? remove,
          bool? isUpdate}) =>
      BasketState(
          basket: basket ?? this.basket,
          remove: remove ?? this.remove,
          isUpdate: isUpdate ?? this.isUpdate);
}
