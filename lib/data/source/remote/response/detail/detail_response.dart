import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_response.g.dart';
part 'detail_response.freezed.dart';

@freezed
class DetailResponse with _$DetailResponse {
  factory DetailResponse({
    required List<Map<String, dynamic>> media,
    required List<Map<String, dynamic>> sport,
    required List<Map<String, dynamic>> education,
    required List<Map<String, dynamic>> political,
    required List<Map<String, dynamic>> social,
    required List<Map<String, dynamic>> culture,
    required List<Map<String, dynamic>> places,
    required List<Map<String, dynamic>> vehicle,
    required List<Map<String, dynamic>> facilities,
    required List<Map<String, dynamic>> business,
    required List<Map<String, dynamic>> electronics,
    required List<Map<String, dynamic>> food,
    required List<Map<String, dynamic>> home,
    required List<Map<String, dynamic>> finance,
    required List<Map<String, dynamic>> beauty,
    required List<Map<String, dynamic>> fashion,
    required List<Map<String, dynamic>> industry,
    required List<Map<String, dynamic>> others,
    required List<Map<String, dynamic>> skills,
    required List<Map<String, dynamic>> words,
  }) = _DetailResponse;

  factory DetailResponse.fromJson(Map<String, dynamic> json) => _$DetailResponseFromJson(json);
}
