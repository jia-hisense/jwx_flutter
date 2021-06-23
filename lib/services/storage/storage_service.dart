import 'package:jwx_flutter/bloc/models/user.dart';

abstract class StorageService {
  Future<User> getLocalUser();
  Future<void> saveLocalUser(User user);
}