import 'package:hive/hive.dart';

part 'bookmark_data.g.dart';

@HiveType(typeId: 0)
class BookmarkData extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  int count;

  @HiveField(2)
  int cost;

  @HiveField(3)
  String img;

  @HiveField(4)
  String name;

  @HiveField(5)
  bool isFavourite;

  @HiveField(6)
  bool isSave;

  BookmarkData(
      {required this.id,
      required this.count,
      required this.name,
      required this.cost,
      required this.img,
      required this.isSave,
      required this.isFavourite});
}
