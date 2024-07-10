import 'package:bloc/bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';

import '../../../data/source/remote/response/brends/brands_response.dart';
import '../../../data/source/remote/response/sliders/slider_response.dart';
import '../../../data/source/remote/response/special_categories/special_categories.dart';
import '../../../data/source/remote/response/top_categories/top_categories.dart';
import '../../../data/source/remote/response/xit_products/xit_products.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(HomeState(sliders: null, topCategories: null, topBrands: null,specialCategories: null, xitProducts: null, basket: [])) {
    on<HomeLoadCategoriesEvent>((event, emit) async {
      var slider = await di<ApiService>().getSlider();

      emit(state.copyWith(sliders: slider));
    });

    on<HomeLoadBrandEvent>((event, emit) async {
      var brand = await di<ApiService>().getTopBrands();

      emit(state.copyWith(topBrands: brand));
    });

    on<HomeLoadSpecialCategories>((event, emit) async{
      var category = await di<ApiService>().getSpecialCategories();

      emit(state.copyWith(specialCategories: category));
    });

    on<HomeLoadXitProductsEvent>((event, emit) async {
      var xitProducts = await di<ApiService>().getXitProducts();

      emit(state.copyWith(xitProducts: xitProducts));
    });

    on<HomeClickLikedEvent>((event, emit) async{
      var bookMark = MyBookmarkHelper.getDataByKey(event.id);

      if(bookMark != null) {
        bookMark.isFavourite = !event.isSave;
      }
      else {
        bookMark = BookmarkData(id: event.id, count: 1, name: event.name, cost: event.cost, img: event.img, isSave: false, isFavourite: !event.isSave, isSelect: true);
      }

      MyBookmarkHelper.putData(event.id, bookMark);


      emit(state.copyWith(basket: MyBookmarkHelper.getIds()));
    });
  }
}
