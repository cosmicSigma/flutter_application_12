import 'package:flutter_application_12/core/library/local_storage.dart';
import 'package:flutter_application_12/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_application_12/features/auth/data/models/user_converter.dart';
import 'package:flutter_application_12/features/auth/domain/repositorres/auth_repository.dart';
import 'package:flutter_application_12/features/auth/presentation/controllers/auth_controller.dart';

late final AuthController authController;


// Service Locator pattern and Dependency Injection pattern
void setUpLocator() {
  // init
  final userConverter = UserConverter();
  final storage = LocalStorage();
  final dataSource = AuthLocalDataSource(storage: storage);
  AuthRepository repository =
      AuthRepository(dataSource: dataSource, userConverter: userConverter);
  authController = AuthController(repository);
}
