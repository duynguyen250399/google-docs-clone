// ignore_for_file: avoid_classes_with_only_static_members

import 'package:google_docs_clone/src/core/services/service_locator.dart';

class AppInitialization {
  static Future<void> initialize() async {
    sl.register();
  }
}
