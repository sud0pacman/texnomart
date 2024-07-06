part of 'detail_bloc.dart';

@immutable
sealed class DetailEvent {}
class DetailInitialEvent extends DetailEvent {
  final String key;

  DetailInitialEvent({required this.key});
}

class DetailGetProduct extends DetailEvent {
  final String id;

  DetailGetProduct({required this.id});
}

class AddToBasketEvent extends DetailEvent {
  final int key;
  final bool isLiked;

  AddToBasketEvent({required this.key, required this.isLiked});
}

class AddToBookMarkEvent extends DetailEvent {
  final int key;
  final String img;
  final int cost;
  final String name;

  AddToBookMarkEvent({required this.key, required this.img, required this.cost, required this.name});


}
