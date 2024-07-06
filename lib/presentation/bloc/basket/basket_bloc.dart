import 'package:bloc/bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_basket_helper.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';

import '../../../data/source/remote/response/detail/detail_responce.dart';
import '../../../di/di.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  var api = di<ApiService>();

  BasketBloc() : super(BasketState(basket: [], remove: null, isUpdate: false)) {
    on<BasketLoadProductsEvents>((event, emit) async{
      List<BookmarkData> bookmarks = MyBookmarkHelper.getIds();

      print("********************************** basket bloc $bookmarks");

      emit(state.copyWith(basket: MyBookmarkHelper.getIds(),));
    });

    on<BasketDeleteProductEven>((event, emit) async{

      print("************************** basket bloc deleting ${event.product.id}");
      await MyBookmarkHelper.remove(event.product.id);

      emit(state.copyWith(
        remove: event.product,
        basket: MyBookmarkHelper.getIds(),
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
      if(event.isLiked) {
        await MyBasketHelper.remove(event.id,);
      }
      else {
        await MyBasketHelper.saveId(event.id, event.id);
      }

      emit(state.copyWith(isUpdate: true));
    });
  }
}
