part of 'home_bloc.dart';

class HomeState {
  final SliderResponse? sliders;
  final TopCategories? topCategories;
  final TopBrands? topBrands;
  final SpecialCategories? specialCategories;
  final XitProducts? xitProducts;
  final List<int> basket;

  HomeState(
      {required this.sliders,
      required this.topCategories,
      required this.topBrands,
      required this.specialCategories,
      required this.xitProducts,
      required this.basket});

  HomeState copyWith(
          {SliderResponse? sliders,
          TopCategories? topCategories,
          TopBrands? topBrands,
          SpecialCategories? specialCategories,
          XitProducts? xitProducts,
          List<int>? basket}) =>
      HomeState(
          sliders: sliders ?? this.sliders,
          topCategories: topCategories ?? this.topCategories,
          topBrands: topBrands ?? this.topBrands,
          specialCategories: specialCategories ?? this.specialCategories,
          xitProducts: xitProducts ?? this.xitProducts,
          basket: basket ?? this.basket);
}
