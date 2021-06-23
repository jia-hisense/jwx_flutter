import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:jwx_flutter/services/route/app_router.dart';
import 'package:jwx_flutter/services/route/routes.dart';

class RouteNotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Route not found"),
            TextButton(
              onPressed: () => AppRouter.router.navigateTo(
                context,
                Routes.homeRoute.route,
                replace: true,
                clearStack: true,
                transition: TransitionType.none,
              ),
              child: const Text("Go Home"),
            )
          ],
        ),
      ),
    );
  }
}