import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/top_categories/top_categories.dart';

import '../response/brends/brands_response.dart';
import '../response/category/products_all_category.dart';
import '../response/detail/detail_response.dart';
import '../response/sliders/slider_response.dart';
import '../response/special_categories/special_categories.dart';
import '../response/xit_products/xit_products.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('web/v1/content/sliders')
  Future<SliderResponse> getSlider();

  @GET('web/v1/header/top-categories')
  Future<TopCategories> getTopCategories();

  @GET('web/v1/home/special-brands')
  Future<TopBrands> getTopBrands();

  @GET('web/v1/home/special-categories')
  Future<SpecialCategories> getSpecialCategories();

  @GET('web/v1/home/special-products?type=hit_products')
  Future<XitProducts>getXitProducts();


  @GET('common/v1/search/filters')
  Future<ProductAllCategory> getSelectedCategory({
    @Query('category_all') required String slug,
    @Query('sort') String sort = '-popular',
    @Query('page') int page = 1,
  });

  @GET('web/v1/product/detail')
  Future<DetailResponse> getDetailProduct({
    @Query('id') required String id,
  });
}