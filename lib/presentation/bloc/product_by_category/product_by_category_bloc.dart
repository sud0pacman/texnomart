import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/local/my_basket_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';

import '../../../data/source/remote/response/brends/brands_response.dart';
import '../../../data/source/remote/response/category/products_all_category.dart';

part 'product_by_category_event.dart';
part 'product_by_category_state.dart';

class ProductByCategoryBloc extends Bloc<ProductByCategoryEvent, ProductByCategoryState> {

  ProductByCategoryBloc() : super(ProductByCategoryState(filteredProduct: null, isBack: false, likes: [], loading: false)) {
    on<LoadProductByCategoryEvent>((event, emit) async{
      emit(state.copyWith(loading: true));
      var products = await di<ApiService>().getSelectedCategory(slug: event.slug);
      
      print("********************************* category bloc $products");

      emit(state.copyWith(loading: false, filteredProduct: products, likes: MyBasketHelper.getIds()));
    });

    on<CLickLikedEvent>((event, emit) async{
      if(event.isLike) {
        await MyBasketHelper.remove(event.id);
      }
      else {
        await MyBasketHelper.saveId(event.id, event.id);
      }

      emit(state.copyWith(likes: MyBasketHelper.getIds()));
    });
  }
}
