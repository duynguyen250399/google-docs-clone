import 'package:google_docs_clone/src/core/services/service_locator.dart';
import 'package:google_docs_clone/src/modules/authentication/services/authentication_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthenticationService
    extends AuthenticationService<GoogleSignInAccount?> {
  final GoogleSignIn _googleSignIn = sl.get();

  @override
  Future<GoogleSignInAccount?> signIn() {
    return _googleSignIn.signIn();
  }
}
