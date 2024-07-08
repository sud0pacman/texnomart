import 'package:bloc/bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';

import '../../../di/di.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  var api = di<ApiService>();

  BasketBloc() : super(BasketState(basket: [], remove: null, isUpdate: false)) {
    on<BasketLoadProductsEvents>((event, emit) async{
      List<BookmarkData> bookmarks = MyBookmarkHelper.getIds();

      print("********************************** basket bloc $bookmarks");
      var onlySaves = MyBookmarkHelper.getIds().where((e) => e.isSave == true).toList();

      emit(state.copyWith(basket: onlySaves,));
    });

    on<BasketDeleteProductEven>((event, emit) async{

      var bookmark = MyBookmarkHelper.getDataByKey(event.product.id);

      if(bookmark != null) {
        bookmark.isSave = false;
        await MyBookmarkHelper.putData(event.product.id, bookmark);
      }

      print("************************** basket bloc deleting ${event.product.id}");


      var onlySaves = MyBookmarkHelper.getIds().where((e) => e.isSave == true).toList();

      emit(state.copyWith(
        remove: event.product,
        basket: onlySaves,
        ));
    });

    on<ClickMinusEvent>((event, emit) async{
      var bookmark = MyBookmarkHelper.getDataByKey(event.id);

      if(bookmark != null) {
        bookmark.count = event.count;
        await MyBookmarkHelper.putData(event.id, bookmark);
      }

      emit(state.copyWith(isUpdate: true));
    });

    on<ClickPlusEvent>((event, emit) async{
      var bookmark = MyBookmarkHelper.getDataByKey(event.id);

      if(bookmark != null) {
        bookmark.count = event.count;
        await MyBookmarkHelper.putData(event.id, bookmark);
      }

      emit(state.copyWith(isUpdate: true));
    });

    on<ClickLiked>((event, emit) async{
      print("************************** basket bloc ${event.isLiked}");
      var bookMark = MyBookmarkHelper.getDataByKey(event.id);
      bookMark?.isFavourite = !event.isLiked;

      MyBookmarkHelper.putData(event.id, bookMark!);

      emit(state.copyWith(isUpdate: true));
    });
  }
}
