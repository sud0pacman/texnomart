import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/model/my_product_data.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/presentation/theme/my_images.dart';

import '../../../data/source/remote/response/category/products_all_category.dart';
import '../../../data/source/remote/response/cheaps/cheeps_response.dart';
import '../../../data/source/remote/response/detail/detail_responce.dart';

part 'product_by_category_state.dart';
part 'product_by_category_event.dart';

class ProductByCategoryBloc extends Bloc<ProductByCategoryEvent, ProductByCategoryState> {

  ProductByCategoryBloc() : super(ProductByCategoryState(filteredProduct: [], isBack: false, bookMarks: [], loading: false, cheeps: [])) {
    on<LoadProductByCategoryEvent>((event, emit) async{
      emit(state.copyWith(loading: true));
      var networkProducts = await di<ApiService>().getSelectedCategory(slug: event.slug);

      List<MyProductData> myProducts = networkDataToMyData(networkProducts);

      emit(state.copyWith(loading: false, filteredProduct: myProducts, bookMarks: MyBookmarkHelper.getIds()));
    });

    on<LoadCheeps>((event, emit) async{
      var cheepResponse = await di<ApiService>().getCategoryCheeps(slug: event.slug);

      List<Category> cheeps = cheepResponse.data.categories;

      print("********************************* category bloc cheeps ${cheeps.length}");

      emit(state.copyWith(cheeps: cheeps));
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

      var data = state.filteredProduct[event.index];
      data.isLike = !event.isLike;
      state.filteredProduct[event.index] = data;

      emit(state.copyWith(filteredProduct: state.filteredProduct));
    });

    on<CategoryClickBasketEvent>((event, emit) async{
      var bookMark = MyBookmarkHelper.getDataByKey(event.id);

      if(bookMark != null) {
        bookMark.isSave = true;
      }
      else {
        bookMark = BookmarkData(id: event.id, count: 1, name: event.name, cost: event.cost, img: event.img, isSave: true, isFavourite: false, isSelect: true);
      }

      await MyBookmarkHelper.putData(event.id, bookMark);

      var data = state.filteredProduct[event.index];
      data.isSave = true;
      state.filteredProduct[event.index] = data;

      emit(state.copyWith(filteredProduct: state.filteredProduct));
    });
  }

  List<MyProductData> networkDataToMyData(ProductAllCategory networkProducts) {
    List<MyProductData> res = [];

    var network = networkProducts.data?.products;

    if(network != null) {
      for(var data in network) {
        BookmarkData? bookMarkData = MyBookmarkHelper.getDataByKey(data.id ?? -1);
        bool isLikes = bookMarkData == null ? false : bookMarkData.isFavourite;
        bool isSave = bookMarkData == null ? false : bookMarkData.isSave;

        res.add(
          MyProductData(
            id: data.id ?? -1,
            name: data.name ?? "Empty",
            img: data.image ?? MyImages.myPlaceHolder,
            reviewCount: data.reviewsCount ?? 1,
            cost: data.salePrice ?? 1,
            isLike: isLikes,
            isSave: isSave,
            slug: ""
          )
        );
      }
    }

    return res;
  }
}
