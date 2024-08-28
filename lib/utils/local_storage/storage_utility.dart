import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // Phương thức chung để lưu data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Phương thức chung để đọc data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Phương thức chung để xóa data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Xóa tất cả dữ liệu trong bộ nhớ
  Future<void> clearAll() async {
    await _storage.erase();
  }
}


/// *** *** *** *** *** Example *** *** *** *** *** ///

// LocalStorage localStorage = LocalStorage();
//
// // Save data
// localStorage.saveData('username', 'JohnDoe');
//
// // Read data
// String? username = localStorage.readData<String>('username');
// print('Username: $username'); // Output: Username: JohnDoe
//
// // Remove data
// localStorage.removeData('username');
//
// // Clear all data
// localStorage.clearAll();

