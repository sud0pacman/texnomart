import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../model/bookmark_data.dart';


class MyBookmarkHelper {
  static const  String _boxName = "bookmarkbox";
  static init() async{
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    Hive.registerAdapter(BookmarkDataAdapter());
    await Hive.openBox<BookmarkData>(_boxName);
  }

  static Future<int> clear() async {
    final box = Hive.box<BookmarkData>(_boxName);
    return await box.clear();
  }

  static Future<void> putData(int key, BookmarkData data) {
   final box = Hive.box<BookmarkData>(_boxName);
   return box.put(key, data);
  }

  static List<BookmarkData> getIds() {
    final box = Hive.box<BookmarkData>(_boxName);
    return box.values.map((element) => element).toList();
  }

  static BookmarkData? getDataByKey(int key) {
    final box = Hive.box<BookmarkData>(_boxName);

    return box.get(key);
  }

  static Future<void> remove(int key) {
    final box = Hive.box<BookmarkData>(_boxName);
    return box.delete(key);
  }
}