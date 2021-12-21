import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'flashcard_state.dart';

class FlashcardcubitCubit extends Cubit<FlashcardcubitState> {
  FlashcardcubitCubit() : super(FlashcardcubitInitial());
}
