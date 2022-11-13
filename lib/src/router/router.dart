import 'package:go_router/go_router.dart';
import 'package:google_docs_clone/src/core/presentation/screens/welcome.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const WelcomeScreen(),
    ),
  ],
);
