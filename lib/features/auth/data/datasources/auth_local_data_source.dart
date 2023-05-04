import 'dart:convert';
import 'package:flutter_application_12/core/library/local_storage.dart';

abstract class AuthLocalDataSource {
  factory AuthLocalDataSource({required LocalStorage storage}) =>
      AuthLocalDataSourceImpl(storage: storage);

  Map<String, Object> signUp(String name, Map<String, Object> data);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final LocalStorage storage;
  AuthLocalDataSourceImpl({required this.storage});

  @override
  Map<String, Object> signUp(String name, Map<String, Object> data) {
    String json = jsonEncode(data);
    bool success = storage.storeData(key: name, value: json);
    return {
      "message": "Congratulations successfully registrated!!!",
      "success": success,
      "data": "no-data",
    };
  }
}
