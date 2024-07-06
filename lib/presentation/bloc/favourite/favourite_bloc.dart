import 'package:bloc/bloc.dart';
import 'package:texnomart/data/source/local/my_basket_helper.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';

import '../../../data/model/bookmark_data.dart';
import '../../../data/source/remote/response/detail/detail_responce.dart';
import '../../../data/source/remote/service/api_service.dart';
import '../../../di/di.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  var api = di<ApiService>();

  FavouriteBloc() : super(FavouriteState(products: [], bookmarks: [], favourite: [], isUpdate: false, isLoading: false,)) {
    on<LoadDataEvent>((event, emit)async {
      emit(state.copyWith(isLoading: true));
      List<int> ids = MyBasketHelper.getIds();
      List<DetailResponse> details = [];

      print("********************************** favourite bloc $ids");

      for(int id in ids) {
        details.add(
            await api.getDetailProduct(id: "$id")
        );
      }

      print("********************************** favourite bloc ${details.length}");
      emit(state.copyWith(isLoading: false, products: details));
    });

    on<ClickLikeEvent>((event, emit) async{
      print("************************** favourite bloc ${event.isLiked}");
      if(event.isLiked) {
        await MyBasketHelper.remove(event.id,);
      }
      else {
        await MyBasketHelper.saveId(event.id, event.id);
      }

      emit(state.copyWith(isUpdate: true));
    });

    on<ClickBasketEvent>((event, emit) async{
      await MyBookmarkHelper.putData(event.id, BookmarkData(id: event.id, count: 1, name: event.name, cost: event.cost, img: event.img));

      emit(state.copyWith(isUpdate: true));
    });
  }
}
