part of 'home_bloc.dart';

class HomeState {
  final SliderResponse? sliders;
  final TopCategories? topCategories;
  final TopBrands? topBrands;
  final SpecialCategories? specialCategories;
  final XitProducts? xitProducts;

  HomeState(
      {required this.sliders,
      required this.topCategories,
      required this.topBrands,
      required this.specialCategories,
      required this.xitProducts});

  HomeState copyWith(
          {SliderResponse? sliders,
          TopCategories? topCategories,
          TopBrands? topBrands,
          SpecialCategories? specialCategories,
          XitProducts? xitProducts,}) =>
      HomeState(
          sliders: sliders ?? this.sliders,
          topCategories: topCategories ?? this.topCategories,
          topBrands: topBrands ?? this.topBrands,
          specialCategories: specialCategories ?? this.specialCategories,
          xitProducts: xitProducts ?? this.xitProducts
      );
}
