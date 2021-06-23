import 'package:flutter/foundation.dart';
import 'package:jwx_flutter/bloc/models/user.dart';
import 'package:jwx_flutter/utils/global.dart';

class UserProvider with ChangeNotifier {
  User get user => Global.user;

  void setUser(User user) {
    Global.user = user;
    Global.storageService.saveLocalUser(user);
    notifyListeners();
  }
}