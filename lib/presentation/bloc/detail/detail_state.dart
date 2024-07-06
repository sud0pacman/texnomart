part of 'detail_bloc.dart';

class DetailState {
  final DetailResponse? detailResponse;
  final bool isLoading;
  final bool isLiked;
  final bool isSaved;

  DetailState(
      {
      required this.detailResponse,
      required this.isLoading,
      required this.isLiked,
      required this.isSaved});

  DetailState copyWith(
          {
          DetailResponse? detailResponse,
          bool? isLoading,
          bool? isLiked,
          bool? isSaved}) =>
      DetailState(
          detailResponse: detailResponse ?? this.detailResponse,
          isLoading: isLoading ?? this.isLoading,
          isLiked: isLiked ?? this.isLiked,
          isSaved: isSaved ?? this.isSaved);

  @override
  String toString() {
    return 'DetailState{detailResponse: ${detailResponse?.message}, isLoading: $isLoading, isLiked: $isLiked, isSaved: $isSaved}';
  }
}
