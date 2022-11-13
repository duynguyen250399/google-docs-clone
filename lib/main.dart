import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/application/app.dart';
import 'package:google_docs_clone/src/application/initialization.dart';
import 'package:google_docs_clone/src/core/theme/theme.dart';
import 'package:google_docs_clone/src/core/values/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppInitialization.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      theme: appTheme,
      home: const GoogleDocsApp(),
    );
  }
}
