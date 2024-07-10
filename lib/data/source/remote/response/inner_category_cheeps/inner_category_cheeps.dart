import 'package:freezed_annotation/freezed_annotation.dart';

part 'inner_category_cheeps.freezed.dart';
part 'inner_category_cheeps.g.dart';


@freezed
class InnerCategoryCheeps with _$InnerCategoryCheeps {
  factory InnerCategoryCheeps({
    required bool success,
    required String message,
    required int code,
    required Data data,
  }) = _InnerCategoryCheeps;

  factory InnerCategoryCheeps.fromJson(Map<String, dynamic> json) => _$InnerCategoryCheepsFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    required Parent parent,
    required List<Parent> categories,
    required bool hasChildImage,
    required bool hasChild,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Parent with _$Parent {
  factory Parent({
    required int id,
    required String name,
    String? image,
    required String slug,
    required bool hasChild,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}
