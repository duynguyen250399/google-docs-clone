import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/core/theme/theme.dart';
import 'package:google_docs_clone/src/core/values/constants.dart';
import 'package:google_docs_clone/src/router/router.dart';

class GoogleDocsApp extends StatelessWidget {
  const GoogleDocsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      theme: appTheme,
      title: $constants.app.title,
    );
  }
}
