import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppcubitCubit extends Cubit<AppcubitState> {
  AppcubitCubit() : super(AppcubitInitial());
}
