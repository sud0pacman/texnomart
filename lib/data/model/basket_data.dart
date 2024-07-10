class BasketData {
  final int id;
  final String name;
  final String count;
  final String image;
  final String cost;
  bool isSelected = false;
  bool isFavourite;
  bool isSaved;

  BasketData(
      {required this.id,
      required this.name,
      required this.count,
      required this.image,
      required this.cost,
      required this.isSelected,
      required this.isFavourite,
      required this.isSaved});
}
