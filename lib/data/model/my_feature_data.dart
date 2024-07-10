class MyFeatureData {
  final String name;
  final String value;

  MyFeatureData({required this.name, required this.value});

  factory MyFeatureData.fromJson(Map<String, dynamic> json) {
    return MyFeatureData(
      name: json['name'] ?? '',
      value: json['value'] ?? '',
    );
  }
}