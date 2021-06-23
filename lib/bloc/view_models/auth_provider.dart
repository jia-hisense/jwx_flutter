import 'package:flutter/material.dart';
import 'package:jwx_flutter/bloc/models/user.dart';
import 'package:jwx_flutter/services/http_api/http_api.dart';
import 'package:jwx_flutter/services/service_locator.dart';
import 'package:jwx_flutter/services/storage/storage_service.dart';
import 'package:jwx_flutter/utils/global.dart';

enum AuthStatus {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider with ChangeNotifier {
  AuthStatus _loggedInStatus = AuthStatus.NotLoggedIn;
  AuthStatus _registeredInStatus = AuthStatus.NotRegistered;

  AuthStatus get loggedInStatus => _loggedInStatus;
  AuthStatus get registeredInStatus => _registeredInStatus;

  HttpAPI _httpAPI = serviceLocator<HttpAPI>();
  StorageService _storageService = serviceLocator<StorageService>();

  Future<Map<String, dynamic>> login(String email, String password) async {
    _loggedInStatus = AuthStatus.Authenticating;
    notifyListeners();

    Map result = await _httpAPI.login(email, password);
    if (result["status"] == true) {
      User authUser = result["user"];
      Global.user = authUser;
      _storageService.saveLocalUser(authUser);
      _loggedInStatus = AuthStatus.LoggedIn;
      notifyListeners();
    } else {
      _loggedInStatus = AuthStatus.NotLoggedIn;
      notifyListeners();
    }
    return result;
  }

  Future<Map<String, dynamic>> register(String email, String password, String passwordConfirmation) async {
    _registeredInStatus = AuthStatus.Registering;
    notifyListeners();

    Map result = await _httpAPI.register(email, password, passwordConfirmation);
    if (result["status"] == true) {
      User authUser = result["user"];
      Global.user = authUser;
      _storageService.saveLocalUser(authUser);
    }
  }

}