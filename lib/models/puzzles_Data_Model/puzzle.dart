import 'dart:math';
import 'package:flutter/material.dart';

import 'chessPuzzle.dart';

class Puzzles extends ChangeNotifier {
  bool notification = true;
  bool soundFx = true;
  bool music = true;
  int randomIndex = Random().nextInt(6);

  void muteFx() {
    soundFx = !soundFx;
    notifyListeners();
  }

  void muteMusic() {
    music = !music;
    notifyListeners();
  }

  void unMute() {
    notification = !notification;
    notifyListeners();
  }
}