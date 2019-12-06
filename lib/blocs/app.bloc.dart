import 'dart:async';
import 'package:flutter/material.dart';

class AppBloc extends ChangeNotifier {
  Timer timer;
  String state = "stopped";
  String selected = "soft";
  double time = 0.1 * 60.0;
  double seconds = 0;
  double percent = 0;

  updateTime() {
    seconds++;
    percent = (seconds * 100) / time;
    notifyListeners();
    if (seconds == time) done();
  }

  select(String type) {
    switch (type) {
      case "soft":
        {
          selected = "soft";
          time = 5.0 * 60.0;
          notifyListeners();
          return;
        }

      case "medium":
        {
          selected = "medium";
          time = 7.0 * 60.0;
          notifyListeners();
          return;
        }

      case "hard":
        {
          selected = "hard";
          time = 10.0 * 60.0;
          notifyListeners();
          return;
        }

      default:
        {
          time = 5.0 * 60.0;
          notifyListeners();
          return;
        }
    }
  }

  start() {
    state = "cooking";
    timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer t) => updateTime(),
    );
    notifyListeners();
  }

  stop() {
    timer.cancel();
    state = "stopped";
    seconds = 0;
    percent = 0;
    notifyListeners();
  }

  done() {
    timer.cancel();
    state = "done";
    seconds = 0;
    percent = 0;
    notifyListeners();
  }

  reset() {
    stop();
  }
}
