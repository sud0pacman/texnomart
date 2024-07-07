part of 'favourite_bloc.dart';


abstract class FavouriteEvent {}

class LoadDataEvent extends FavouriteEvent {}

class ClickLikeEvent extends FavouriteEvent {
  final int id;
  final bool isLiked;
  final String name;
  final int cost;
  final String img;

  ClickLikeEvent({required this.id, required this.isLiked, required this.name, required this.cost, required this.img});
}

class ClickBasketEvent extends FavouriteEvent{
  final int id;
  final bool isSaved;
  final String img;
  final int cost;
  final String name;
  final bool isLiked;

  ClickBasketEvent({required this.id, required this.isSaved, required this.img, required this.cost, required this.name, required this.isLiked});
}