import 'package:firebase_auth/firebase_auth.dart';
import 'package:hikayaats/model/user.dart';
import 'package:hikayaats/service/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    required String sekolah,
    required String tingkat,
  }) async {
    try {
      /// Register to Authentication
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          );

      /// Send email confirmation
      // userCredential.user!.sendEmailVerification();

      /// Create Firestore
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
        tingkat: tingkat,
        sekolah: sekolah,
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      rethrow;
    }
  }
}
