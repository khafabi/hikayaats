import 'package:flutter/foundation.dart';

class FlashcardContent with ChangeNotifier{
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int value){
    _currentIndex = value;
    notifyListeners();
  }
}