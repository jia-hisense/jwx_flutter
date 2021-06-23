import 'package:get_it/get_it.dart';
import 'package:jwx_flutter/bloc/view_models/auth_provider.dart';
import 'package:jwx_flutter/bloc/view_models/user_provider.dart';
import 'package:jwx_flutter/services/storage/storage_service.dart';
import 'package:jwx_flutter/services/storage/storage_service_impl.dart';
import 'package:jwx_flutter/services/http_api/http_api.dart';
import 'package:jwx_flutter/services/http_api/http_api_impl.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // Singleton Services
  serviceLocator.registerLazySingleton<HttpAPI>(() => HttpAPIImpl());
  serviceLocator.registerLazySingleton<StorageService>(() => StorageServiceImpl());

  // Providers
  serviceLocator.registerFactory<AuthProvider>(() => AuthProvider());
  serviceLocator.registerFactory<UserProvider>(() => UserProvider());
}