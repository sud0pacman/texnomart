part of 'home_bloc.dart';


abstract class HomeEvent {}

class HomeLoadCategoriesEvent extends HomeEvent {}
class HomeLoadBrandEvent extends HomeEvent {}
class HomeLoadSpecialCategories extends HomeEvent {}
class HomeLoadXitProductsEvent extends HomeEvent {}

class HomeClickLikedEvent extends HomeEvent {
  final int id;
  final bool isSave;
  final String name;
  final int cost;
  final String img;

  HomeClickLikedEvent({required this.id, required this.isSave, required this.name, required this.cost, required this.img});
}