import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hikayaats/model/user.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user)async {
    try{
      _userReference.doc(user.id).set({
        'email':user.email,
        'name':user.name,
        'tingkat':user.tingkat,
        'sekolah':user.sekolah,
      });
    }catch(e){
      rethrow;
    }
  }
}
