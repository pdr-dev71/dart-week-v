import 'package:vakinha_burger_mobile/app/models/user_model.dart';

import './auth_repository.dart';

abstract class AuthRepository {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
}
