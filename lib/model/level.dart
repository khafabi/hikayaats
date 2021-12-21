import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hikayaats/model/flashcard.dart';
import 'package:hikayaats/model/module.dart';
import 'package:hikayaats/model/submodule.dart';

class Level {
  static const NAME = "name";
  static const IMAGE = "image";
  static const MODULE = "module";

  String? name;
  int? numOfCourses;
  String? image;
  List<Module>? modules;

  Level({
    this.name,
    this.numOfCourses,
    this.image,
    this.modules,
  });

  Level.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    name = snapshot.data()![NAME];
    image = snapshot.data()![IMAGE];
    numOfCourses = 10;
    modules = snapshot.data()![MODULE];
  }
}

// List<Level> level = content
//     .map((item) => Level(
//           item['name'] as String,
//           item['courses'] as int,
//           item['image'] as String,
//           item['modules'] as List<Module>,
//         ))
//     .toList();
//
// var content = [
//   {
//     "name": "MTS Kelas VII",
//     'courses': 17,
//     'image': "assets/images/marketing.png",
//     'modules': [
//       Module(
//         name: "Zaman Umayyah",
//         image: '',
//         numOfCourses: 12,
//         submodules: [
//           Submodule(
//               name: "The begining",
//               videoId: "2FCo7OxVoeY",
//               transcript:
//                   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum./nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//               summary: [
//                 FlashCard("Whos the strongest man alive", "Hercules"),
//                 FlashCard("France revolution", "WOAOW"),
//                 FlashCard("Whos Harry potter", "British magician")
//               ])
//         ],
//       ),
//     ],
//   },
// ];
