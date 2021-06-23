import 'package:jwx_flutter/bloc/models/user.dart';
import 'package:jwx_flutter/services/service_locator.dart';
import 'package:jwx_flutter/services/storage/storage_service.dart';

class Global {
  static StorageService storageService = serviceLocator<StorageService>();
  static User user;

  static Future init() async {
    user = await storageService.getLocalUser();
  }
}