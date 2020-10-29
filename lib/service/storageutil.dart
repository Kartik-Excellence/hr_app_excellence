import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  static StorageUtil _storageUtil;
  static SharedPreferences _sharedPreferences;

  static Future<StorageUtil> getINstance() async {
    if (_storageUtil == null) {
      var secureStorage = StorageUtil._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil;
  }

  StorageUtil._();

  Future _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static String getProfileImage({String defValue = ''}) {
    if (_sharedPreferences == null) {
      return null;
    }
    return _sharedPreferences.getString('profileimage');
  }

  static Future<bool> setProfileImage(String value) async {
    if (_sharedPreferences == null) return null;
    return _sharedPreferences.setString('profileimage', value);
  }

  static String getUserToken({String defValue = ''}) {
    if (_sharedPreferences == null) return null;
    return _sharedPreferences.getString('usertoken')?? defValue;
  }
  static Future<bool> setUserToken(String value) async{
     if (_sharedPreferences == null) return null;
    return _sharedPreferences.setString('usertoken',value);
  }

}
