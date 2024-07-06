import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';


class MyBasketHelper {
  static const  String _boxName = "savedbox";
  static init() async{
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    await Hive.openBox<int>(_boxName);
  }

  static Future<int> clear() async {
    final box = Hive.box<int>(_boxName);
    return await box.clear();
  }

  static Future<void> saveId(int key, int id) {
   final box = Hive.box<int>(_boxName);
   return box.put(key, id);
  }

  static List<int> getIds() {
    final box = Hive.box<int>(_boxName);
    return box.values.map((element) => element).toList();
  }

  static int? getDataById(int id) {
    final box = Hive.box<int>(_boxName);
    return box.get(id);
  }

  static Future<void> remove(int key) {
    final box = Hive.box<int>(_boxName);
    return box.delete(key);
  }
}