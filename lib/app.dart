import "package:flutter/material.dart";
import "package:products/config/themes/themes.dart";
import "./config/router/routes.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRoutes.routerDelegate,
      routeInformationParser: appRoutes.routeInformationParser,
      routeInformationProvider: appRoutes.routeInformationProvider,
      theme: themeData,
    );
  }
}