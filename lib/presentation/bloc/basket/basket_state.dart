part of 'basket_bloc.dart';

class BasketState {
  final List<BookmarkData> basket;
  final BookmarkData? remove;
  final bool isUpdate;
  final int totalCount;
  final int totalPrice;
  final bool isAllSelected;
  final int deleteCount;

  BasketState({
    required this.basket,
    required this.remove,
    required this.isUpdate,
    required this.totalPrice,
    required this.totalCount,
    required this.isAllSelected,
    required this.deleteCount,
  });

  BasketState copyWith({
    List<BookmarkData>? basket,
    BookmarkData? remove,
    bool? isUpdate,
    int? totalCount,
    int? totalPrice,
    bool? isAllSelected,
    int? deleteCount,
  }) =>
      BasketState(
          basket: basket ?? this.basket,
          remove: remove ?? this.remove,
          isUpdate: isUpdate ?? this.isUpdate,
          totalCount: totalCount ?? this.totalCount,
          totalPrice: totalPrice ?? this.totalPrice,
          isAllSelected: isAllSelected ?? this.isAllSelected,
          deleteCount: deleteCount ?? this.deleteCount);
}
