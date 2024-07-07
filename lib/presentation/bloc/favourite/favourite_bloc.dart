import 'package:bloc/bloc.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';

import '../../../data/model/bookmark_data.dart';
import '../../../data/source/remote/service/api_service.dart';
import '../../../di/di.dart';

part 'favourite_event.dart';

part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  var api = di<ApiService>();

  FavouriteBloc()
      : super(FavouriteState(
          bookmarks: [],
          favourite: [],
          isUpdate: false,
          isLoading: false,
        )) {
    on<LoadDataEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      List<BookmarkData> bookMarks = MyBookmarkHelper.getIds();

      bookMarks = bookMarks.where((e) => e.isFavourite == true).toList();

      print(
          "********************************** favourite bloc ${bookMarks.length}");

      emit(state.copyWith(isLoading: false, bookmarks: bookMarks));
    });

    on<ClickLikeEvent>((event, emit) async {
      print("************************** favourite bloc ${event.isLiked}");
      var bookMark = MyBookmarkHelper.getDataByKey(event.id);

      if (bookMark != null) {
        bookMark.isFavourite = !event.isLiked;
      } else {
        bookMark = BookmarkData(
            id: event.id,
            count: 1,
            name: event.name,
            cost: event.cost,
            img: event.img,
            isSave: true,
            isFavourite: !event.isLiked);
      }

      print(
          "***************************** favourite bloc isLiked ${event.isLiked}");

      MyBookmarkHelper.putData(event.id, bookMark);

      emit(state.copyWith(isUpdate: true));
    });

    on<ClickBasketEvent>((event, emit) async {
      var bookMark = BookmarkData(
          id: event.id,
          count: 1,
          name: event.name,
          cost: event.cost,
          img: event.img,
          isSave: true,
          isFavourite: event.isLiked);

      MyBookmarkHelper.putData(event.id, bookMark);

      var bookMarks = MyBookmarkHelper.getIds()
          .where((e) => e.isFavourite == true)
          .toList();

      emit(state.copyWith(isUpdate: true, bookmarks: bookMarks));
    });
  }
}
