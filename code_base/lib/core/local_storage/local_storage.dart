import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  static const _isFirstOpen = "isFirstOpen";
  static const _userName = "userName";
  static const _password = "password";

  Box? _box;

  Future<void> setIsFirstOpen(bool value) async {
    await _box?.put(_isFirstOpen, value);
  }

  Future<void> getIsFirstOpen() async {
    return await _box?.get(_isFirstOpen);
  }

  Future<void> setUserName(bool value) async {
    await _box?.put(_userName, value);
  }

  Future<void> getUserName() async {
    return await _box?.get(_userName);
  }

  Future<void> setPassWord(bool value) async {
    await _box?.put(_password, value);
  }

  Future<void> getPassWord() async {
    return await _box?.get(_password);
  }
}
