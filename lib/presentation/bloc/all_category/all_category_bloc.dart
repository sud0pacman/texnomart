import 'package:bloc/bloc.dart';

import '../../../data/source/remote/response/all_category/catalog_menu.dart';
import '../../../data/source/remote/service/api_service.dart';
import '../../../di/di.dart';

part 'all_category_event.dart';
part 'all_category_state.dart';

class AllCategoryBloc extends Bloc<AllCategoryEvent, AllCategoryState> {

  AllCategoryBloc() : super(AllCategoryState(catalogMenu: [], loading: false)) {
    on<AllCategoryEvent>((event, emit) async{
      emit(state.copyWith(loading: true));
      var getTopMenu = await di<ApiService>().getMenuCatalogs();
      var categories = getTopMenu.data?.data ?? [];

      print("***************************** top categories ${categories.length}");

      emit(state.copyWith(loading: false, catalogMenu: categories));
    });
  }
}
