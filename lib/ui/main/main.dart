import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jwx_flutter/bloc/view_models/auth_provider.dart';
import 'package:jwx_flutter/bloc/view_models/user_provider.dart';
import 'package:jwx_flutter/generated/l10n.dart';
import 'package:jwx_flutter/services/route/app_router.dart';
import 'package:jwx_flutter/services/route/routes.dart';
import 'package:jwx_flutter/services/service_locator.dart';
import 'package:jwx_flutter/ui/home/jwx_home_page.dart';
import 'package:jwx_flutter/ui/login/login_page.dart';
import 'package:jwx_flutter/utils/global.dart';
import 'package:jwx_flutter/utils/theme.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  Global.init().then((value) => runApp(MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    AppRouter appRouter = AppRouter(
      routes: Routes.routes,
      notFoundHandler: Routes.routeNotFoundHandler,
    );
    appRouter.setupRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => serviceLocator<UserProvider>()),
        ChangeNotifierProvider(create: (_) => serviceLocator<AuthProvider>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: jwxTheme,        onGenerateRoute: AppRouter.router.generator,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: FutureBuilder(
            future: Global.storageService.getLocalUser(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return CircularProgressIndicator();
                default:
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  else if (snapshot.data == null || snapshot.data.token == null)
                    return LoginPage();
                  else
                    return JWXHomePage();
              }
            }),
      ),
    );
  }
}