import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_basket_helper.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';

import '../../../data/source/remote/response/detail/detail_responce.dart';
import '../../../di/di.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState(detailResponse: null, isLoading: false, isLiked: false, isSaved: false)) {
    on<AddToBasketEvent>(_addToBasket);
    on<DetailGetProduct>((event, emit) async{
      bool isLiked = MyBasketHelper.getIds().contains(int.parse(event.id));
      bool isSaved = MyBookmarkHelper.getDataByKey(int.parse(event.id)) == null ? false : true;

      emit(state.copyWith(isLoading: true, isSaved: isSaved, isLiked: isLiked,));

      var products = await di<ApiService>().getDetailProduct(id: event.id);

      emit(state.copyWith(isLoading: false, detailResponse: products, isLiked: isLiked));
    });

    on<AddToBookMarkEvent>(_addToBookMark);
  }

  void _addToBasket(AddToBasketEvent event, Emitter<DetailState> emit) async {

    if(state.isLiked) {
      await MyBasketHelper.remove(event.key);
    }
    else {
      await MyBasketHelper.saveId(event.key, event.key);
    }

    emit(state.copyWith(isLiked: !event.isLiked));
  }

  void _addToBookMark(AddToBookMarkEvent event, Emitter<DetailState> emit) async {

    await MyBookmarkHelper.putData(event.key, BookmarkData(id: event.key, count: 1, name: event.name, cost: event.cost, img: event.img));

    emit(state.copyWith(isSaved: true));
  }
}
