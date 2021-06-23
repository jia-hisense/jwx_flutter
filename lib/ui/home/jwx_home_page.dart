import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:jhk_extension/jhk_extension.dart';
import 'package:jwx_flutter/generated/l10n.dart';
import 'package:jwx_flutter/services/route/app_router.dart';
import 'package:jwx_flutter/services/route/routes.dart';
import 'package:jwx_flutter/utils/screen_util.dart';

class JWXHomePage extends StatefulWidget {
  @override
  _JWXHomePageState createState() => _JWXHomePageState();
}

class _JWXHomePageState extends State<JWXHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = Calculator().addTwo(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.initData(context);
    print("屏幕宽度=${ScreenUtil.screenWidth}");
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.homepageTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () => AppRouter.router.navigateTo(
                  context, Routes.login,
                  replace: true, transition: TransitionType.cupertino),
              child: Text(S.current.logout),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
