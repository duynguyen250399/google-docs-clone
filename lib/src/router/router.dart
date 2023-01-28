import 'package:go_router/go_router.dart';
import 'package:google_docs_clone/src/core/ui/screens/welcome.dart';
import 'package:google_docs_clone/src/modules/editor/ui/screens/editor.dart';
import 'package:google_docs_clone/src/modules/home/ui/screens/home.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/editor',
      builder: (_, __) => const EditorScreen(),
    ),
  ],
);
