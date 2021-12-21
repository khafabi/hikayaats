import 'package:hikayaats/model/submodule.dart';

class Module {
  final String name;
  final int numOfCourses;
  final String image;
  final List<Submodule> submodules;

  Module({
    required this.name,
    required this.numOfCourses,
    required this.image,
    required this.submodules,
  }
  );
}
