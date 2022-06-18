import 'package:hive_flutter/hive_flutter.dart';
import 'package:tf_auth_base/tf_auth_base.dart';
import 'dart:async';

class TfAuthPersistantData {
  static const String _boxName = "tf-auth-persistant-data";
  static const String _keyAuthUser = 'authuser';

  late final Box<Map> _box;

  TfAuthPersistantData._privateConstructor();
  static final instance = TfAuthPersistantData._privateConstructor();

  Future<void> init() async {
    if (!Hive.isBoxOpen(_boxName)) {
      _box = await Hive.openBox<Map>(_boxName);
    }
  }

  TfAuthUser? get authUser {
    final userSavedData = _box.get(_keyAuthUser);
    if (userSavedData != null) {
      return TfAuthUser.fromJson(userSavedData);
    }
    return null;
  }

  set authUser(TfAuthUser? user) {
    if (user == null) {
      _box.delete(_keyAuthUser);
    } else {
      _box.put(_keyAuthUser, user.toJson());
    }
  }
}
