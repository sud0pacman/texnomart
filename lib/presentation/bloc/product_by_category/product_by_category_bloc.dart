import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/di/di.dart';

import '../../../data/source/remote/response/brends/brands_response.dart';
import '../../../data/source/remote/response/category/products_all_category.dart';

part 'product_by_category_event.dart';
part 'product_by_category_state.dart';

class ProductByCategoryBloc extends Bloc<ProductByCategoryEvent, ProductByCategoryState> {

  ProductByCategoryBloc() : super(ProductByCategoryState(filteredProduct: null, isBack: false)) {
    on<LoadProductByCategoryEvent>((event, emit) async{
      var products = await di<ApiService>().getSelectedCategory(slug: event.slug);
      
      print("********************************* category bloc $products");

      emit(state.copyWith(filteredProduct: products));
    });
  }
}
