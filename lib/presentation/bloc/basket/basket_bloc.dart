import 'package:bloc/bloc.dart';
import 'package:texnomart/data/model/bookmark_data.dart';
import 'package:texnomart/data/source/local/my_bookmark_helper.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';

import '../../../di/di.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  var api = di<ApiService>();

  BasketBloc() : super(BasketState(basket: [], remove: null, isUpdate: false, totalPrice: 0, totalCount: 0, isAllSelected: false, deleteCount: 0)) {
    on<BasketLoadProductsEvents>((event, emit) async{
      List<BookmarkData> bookmarks = MyBookmarkHelper.getIds();

      print("********************************** basket bloc $bookmarks");
      var onlySaves = MyBookmarkHelper.getIds().where((e) => e.isSave == true).toList();
      var result = totalPriceAndCount(bookmarks);
      var (sum: totalSum, sumCount: totalCount) = result;

      emit(state.copyWith(basket: onlySaves, totalPrice: totalSum, totalCount: totalCount));
    });

    on<BasketDeleteProductEven>((event, emit) async{

      var bookmark = MyBookmarkHelper.getDataByKey(event.product.id);

      if(bookmark != null) {
        bookmark.isSave = false;
        await MyBookmarkHelper.putData(event.product.id, bookmark);
      }

      print("************************** basket bloc deleting ${event.product.id}");


      var onlySaves = MyBookmarkHelper.getIds().where((e) => e.isSave == true).toList();

      var result = totalPriceAndCount(MyBookmarkHelper.getIds());
      var (sum: totalSum, sumCount: totalCount) = result;

      emit(state.copyWith(
        remove: event.product,
        basket: onlySaves,
        totalPrice: totalSum,
        totalCount: totalCount
        ));
    });

    on<ClickMinusEvent>((event, emit) async{
      var bookmark = MyBookmarkHelper.getDataByKey(event.id);

      if(bookmark != null) {
        bookmark.count = event.count;
        await MyBookmarkHelper.putData(event.id, bookmark);
      }

      var result = totalPriceAndCount(MyBookmarkHelper.getIds());
      var (sum: totalSum, sumCount: totalCount) = result;

      emit(state.copyWith(isUpdate: true, totalCount: totalCount, totalPrice: totalSum));
    });

    on<ClickPlusEvent>((event, emit) async{
      var bookmark = MyBookmarkHelper.getDataByKey(event.id);

      if(bookmark != null) {
        bookmark.count = event.count;
        await MyBookmarkHelper.putData(event.id, bookmark);
      }


      var result = totalPriceAndCount(MyBookmarkHelper.getIds());
      var (sum: totalSum, sumCount: totalCount) = result;

      emit(state.copyWith(isUpdate: true, totalPrice: totalSum, totalCount: totalCount));
    });

    on<ClickLiked>((event, emit) async{
      print("************************** basket bloc isLiked ${event.isLiked}");
      var bookMark = MyBookmarkHelper.getDataByKey(event.id);
      bookMark?.isFavourite = !event.isLiked;

      MyBookmarkHelper.putData(event.id, bookMark!);

      emit(state.copyWith(isUpdate: true));
    });

    on<ClickSelect>((event, emit) async{
      print("************************** basket bloc isSelected ${event.isSelected}");
      var bookMark = MyBookmarkHelper.getDataByKey(event.id);
      bookMark?.isSelect = !event.isSelected;

      MyBookmarkHelper.putData(event.id, bookMark!);

      var result = totalPriceAndCount(MyBookmarkHelper.getIds());
      var (sum: totalSum, sumCount: totalCount) = result;

      emit(state.copyWith(isUpdate: true, totalPrice: totalSum, totalCount: totalCount));
    });

    on<ClickAllSelect>((event, emit) async{
      var allBookMarks = MyBookmarkHelper.getIds();

      for(var bookMark in allBookMarks) {
        bookMark.isSelect = !event.isSelected;
        await MyBookmarkHelper.putData(bookMark.id, bookMark);
      }

      var basket = MyBookmarkHelper.getIds().where((e) => e.isSave == true).toList();

      var result = totalPriceAndCount(MyBookmarkHelper.getIds());
      var (sum: totalSum, sumCount: totalCount) = result;

      emit(state.copyWith(
          isAllSelected: !event.isSelected,
          basket: basket,
          totalPrice: totalSum,
          totalCount: totalCount));
    });

    on<DeleteAllEvent>((event, emit) async {
      var allBookMarks = MyBookmarkHelper.getIds();
      var deletedCount = 0;

      for(var bookMark in allBookMarks) {
        if(bookMark.isSelect) {
          bookMark.isSave = false;
          await MyBookmarkHelper.putData(bookMark.id, bookMark);
          ++deletedCount;
        }
      }

      var basket = MyBookmarkHelper
          .getIds()
          .where((e) => e.isSave == true)
          .toList();

      emit(state.copyWith(basket: basket, deleteCount: deletedCount));
    });
  }

  ({int sum, int sumCount}) totalPriceAndCount(List<BookmarkData> bookmarks) {
    int sum = 0;
    int sumCount = 0;

    var selectedSaves = bookmarks.where((e) => e.isSelect && e.isSave).toList();

    for (var bookMark in selectedSaves) {
      sum += bookMark.cost * bookMark.count;
      sumCount += bookMark.count;
    }

    return (sum: sum, sumCount: sumCount);
  }

}
