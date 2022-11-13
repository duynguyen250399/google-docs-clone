import 'package:get_it/get_it.dart';
import 'package:google_docs_clone/src/modules/authentication/services/google_authentication_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ServiceLocator {
  final _sl = GetIt.instance;

  void register() {
    _sl
      ..registerLazySingleton(
        () => GoogleSignIn(
          scopes: [
            'email',
            'profile',
          ],
        ),
      )
      ..registerLazySingleton(() => GoogleAuthenticationService());
  }

  T get<T extends Object>() => _sl.get<T>();
}

ServiceLocator get sl => ServiceLocator();
