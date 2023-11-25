  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:google_sign_in/google_sign_in.dart';


class GoogleAuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

Future<User?> iniciarsesionGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    return userCredential.user;
    
  } catch (e) {
    print("Ha ocurrido un error en el proceso: $e");
    throw Exception("Ha fallado el inicio de sesión");
  }
  
}

Future<void> signOut() async {
  await _auth.signOut();
  await _googleSignIn.signOut();
}

}
  
  
