class MyProductData {
  int id;
  String name;
  String img;
  int cost;
  String slug;
  bool isLike;
  bool isSave;
  int reviewCount;

  MyProductData(
      {required this.id,
      required this.name,
      required this.img,
      required this.cost,
      this.slug = "",
      required this.isSave,
      required this.isLike,
        required this.reviewCount
      });

  @override
  String toString() {
    return 'MyProductData{id: $id, name: $name, img: $img, cost: $cost, slug: $slug, isLike: $isLike, isSave: $isSave}';
  }
}
