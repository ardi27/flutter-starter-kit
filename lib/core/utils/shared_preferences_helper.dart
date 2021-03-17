import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
@lazySingleton
class Prefs{
  SharedPreferences? sharedPreferences;
  Future saveString({required String key,required String value})async{
    sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences?.setString(key, value);
  }
  Future saveBool({required String key,required bool value})async{
    sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences?.setBool(key, value);
  }
  Future getString({required String key})async{
    sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences?.getString(key);
  }
  Future getBool({required String key})async{
    sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences?.getBool(key);
  }
}