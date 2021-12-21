import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'course_state.dart';

class CoursecubitCubit extends Cubit<CoursecubitState> {
  CoursecubitCubit() : super(CoursecubitInitial());
}
