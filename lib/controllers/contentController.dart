import 'package:hikayaats/constants/firebase.dart';
import 'package:hikayaats/model/level.dart';
import 'package:hikayaats/model/module.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  static ContentController instance = Get.find();
  String contentCollection = "content";
  late List<Rx<Level>> levels;
  // _initializeLevel(String name) async {
  //   level.value = await firebaseFirestore
  //       .collection(contentCollection)
  //       .doc(name)
  //       .get()
  //       .then((doc) => Level.fromSnapshot(doc));
  // }
}
