part of 'favourite_bloc.dart';


abstract class FavouriteEvent {}

class LoadDataEvent extends FavouriteEvent {}

class ClickLikeEvent extends FavouriteEvent {
  final int id;
  final bool isLiked;

  ClickLikeEvent({required this.id, required this.isLiked});
}

class ClickBasketEvent extends FavouriteEvent{
  final int id;
  final bool isSaved;
  final String img;
  final int cost;
  final String name;

  ClickBasketEvent({required this.id, required this.isSaved, required this.img, required this.cost, required this.name});
}