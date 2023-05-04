import 'package:flutter_application_12/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_application_12/features/auth/data/models/user_converter.dart';
import 'package:flutter_application_12/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_application_12/features/auth/domain/entitiies/user.dart';

abstract class AuthRepository {
  factory AuthRepository({required AuthLocalDataSource dataSource, required UserConverter userConverter}) 
  => AuthRepoImpl(dataSource: dataSource, userConverter:userConverter);

  //! Todo: to do soon
  // signIn();
  Map<String, Object> signUp(User user);
  // forgotPassword();
  // signOut();
  // deleteAccount();
  // editProfile();
  // viewProfile();
}
