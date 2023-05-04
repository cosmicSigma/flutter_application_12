import 'package:flutter_application_12/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_application_12/features/auth/data/models/user_converter.dart';
import 'package:flutter_application_12/features/auth/domain/entitiies/user.dart';
import 'package:flutter_application_12/features/auth/domain/repositorres/auth_repository.dart';

class AuthRepoImpl implements AuthRepository {
  final AuthLocalDataSource dataSource;
  final UserConverter userConverter;
  AuthRepoImpl({required this.dataSource, required this.userConverter});

  @override
  Map<String, Object> signUp(User user) {
    final data = userConverter.toJson(user);
    return dataSource.signUp(user.name, data);
  }
}
