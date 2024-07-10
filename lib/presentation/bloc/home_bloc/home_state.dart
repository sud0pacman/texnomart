part of 'home_bloc.dart';

class HomeState {
  final SliderResponse? sliders;
  final TopCategories? topCategories;
  final TopBrands? topBrands;
  final SpecialCategories? specialCategories;
  final XitProducts? xitProducts;
  final List<BookmarkData> basket;
  final bool slidersLoading;
  final bool categoryLoading;
  final bool productsLoading;

  HomeState(
      {required this.sliders,
      required this.topCategories,
      required this.topBrands,
      required this.specialCategories,
      required this.xitProducts,
      required this.basket,
      required this.slidersLoading,
      required this.categoryLoading,
      required this.productsLoading,
      });

  HomeState copyWith(
          {SliderResponse? sliders,
          TopCategories? topCategories,
          TopBrands? topBrands,
          SpecialCategories? specialCategories,
          XitProducts? xitProducts,
          List<BookmarkData>? basket,
          bool? slidersLoading,
          bool? categoryLoading,
          bool? productsLoading,
          }) =>
      HomeState(
          sliders: sliders ?? this.sliders,
          topCategories: topCategories ?? this.topCategories,
          topBrands: topBrands ?? this.topBrands,
          specialCategories: specialCategories ?? this.specialCategories,
          xitProducts: xitProducts ?? this.xitProducts,
          basket: basket ?? this.basket,
          slidersLoading: slidersLoading ?? this.slidersLoading,
          categoryLoading: categoryLoading ?? this.categoryLoading,
          productsLoading: productsLoading ?? this.productsLoading,
      );
}
