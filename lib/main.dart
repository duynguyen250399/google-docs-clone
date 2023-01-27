import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/application/app.dart';
import 'package:google_docs_clone/src/application/initialization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppInitialization.initialize();

  runApp(const GoogleDocsApp());
}
