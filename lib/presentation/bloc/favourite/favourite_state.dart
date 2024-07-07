part of 'favourite_bloc.dart';

class FavouriteState {
  final List<BookmarkData> bookmarks;
  final List<int> favourite;
  final bool isUpdate;
  final bool isLoading;

  FavouriteState(
      {
      required this.bookmarks,
      required this.favourite,
      required this.isUpdate,
      required this.isLoading});



  FavouriteState copyWith({
    List<BookmarkData>? bookmarks,
    List<int>? favourite,
    bool? isUpdate,
    bool? isLoading,
  }) =>
      FavouriteState(
          bookmarks: bookmarks ?? this.bookmarks,
          favourite: favourite ?? this.favourite,
          isUpdate: isUpdate ?? this.isUpdate,
          isLoading: isLoading ?? this.isLoading);

  @override
  String toString() {
    return 'FavouriteState{bookmarks: $bookmarks, favourite: $favourite, isUpdate: $isUpdate, isLoading: $isLoading}';
  }
}
