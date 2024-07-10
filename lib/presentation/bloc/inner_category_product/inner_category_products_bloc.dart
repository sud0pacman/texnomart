import 'package:bloc/bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/remote/response/inner_category_cheeps/inner_category_cheeps.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';

import '../../../data/source/local/my_bookmark_helper.dart';
import '../../../data/source/remote/response/inner_category_prdoducts/inner_category_prdoducts.dart';

part 'inner_category_products_event.dart';
part 'inner_category_products_state.dart';

class InnerCategoryProductsBloc extends Bloc<InnerCategoryProductsEvent, InnerCategoryProductsState> {
  InnerCategoryProductsBloc() : super(InnerCategoryProductsState(isLoading: false, products: [], categories: [], likes: [])) {
    on<LoadDataEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      var searched = await di<ApiService>().getInnerCategoryProducts(slug: event.slug);
      var cheep = await di<ApiService>().getInnerCheeps(slug: event.slug);


      var products = searched.data.products;

      print("************************************ InnerCategoryProductsBloc load $products");
      var cheeps = cheep.data.categories;

      emit(state.copyWith(isLoading: false, products: products, categories: cheeps, likes: MyBookmarkHelper.getIds()));
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
