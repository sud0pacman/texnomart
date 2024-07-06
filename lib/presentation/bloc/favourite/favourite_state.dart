part of 'favourite_bloc.dart';

class FavouriteState {
  final List<DetailResponse> products;
  final List<BookmarkData> bookmarks;
  final List<int> favourite;
  final bool isUpdate;
  final bool isLoading;

  FavouriteState(
      {required this.products,
      required this.bookmarks,
      required this.favourite,
      required this.isUpdate,
      required this.isLoading});


  @override
  String toString() {
    return 'FavouriteState{products: ${products.length}, bookmarks: $bookmarks, favourite: $favourite, isUpdate: $isUpdate, isLoading: $isLoading}';
  }

  FavouriteState copyWith({
    List<DetailResponse>? products,
    List<BookmarkData>? bookmarks,
    List<int>? favourite,
    bool? isUpdate,
    bool? isLoading,
  }) =>
      FavouriteState(
          products: products ?? this.products,
          bookmarks: bookmarks ?? this.bookmarks,
          favourite: favourite ?? this.favourite,
          isUpdate: isUpdate ?? this.isUpdate,
          isLoading: isLoading ?? this.isLoading);
}
