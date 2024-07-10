import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';

import '../../../data/source/remote/response/category/products_all_category.dart';
import '../../../data/source/remote/response/cheaps/cheeps_response.dart';

part 'product_by_category_event.dart';
part 'product_by_category_state.dart';

class ProductByCategoryBloc extends Bloc<ProductByCategoryEvent, ProductByCategoryState> {

  ProductByCategoryBloc() : super(ProductByCategoryState(filteredProduct: null, isBack: false, likes: [], loading: false, cheeps: [])) {
    on<LoadProductByCategoryEvent>((event, emit) async{
      emit(state.copyWith(loading: true));
      var products = await di<ApiService>().getSelectedCategory(slug: event.slug);
      var cheepResponse = await di<ApiService>().getCategoryCheeps(slug: event.slug);
      List<Category> cheeps = cheepResponse.data.categories;
      
      print("********************************* category bloc ${cheeps.length}");

      emit(state.copyWith(loading: false, filteredProduct: products, likes: MyBookmarkHelper.getIds(), cheeps: cheeps));
    });

    on<CLickLikedEvent>((event, emit) async{
      var bookMark = MyBookmarkHelper.getDataByKey(event.id);

      if(bookMark != null) {
        bookMark.isFavourite = !event.isLike;
      }
      else {
        bookMark = BookmarkData(id: event.id, count: 1, name: event.name, cost: event.cost, img: event.img, isSave: false, isFavourite: !event.isLike, isSelect: true);
      }

      MyBookmarkHelper.putData(event.id, bookMark);

      emit(state.copyWith(likes: MyBookmarkHelper.getIds()));
    });
  }
}
