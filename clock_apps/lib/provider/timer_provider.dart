import 'dart:async';

import 'package:flutter/foundation.dart';

class TimerProvider with ChangeNotifier {
  Timer? _timer;
  int _hour = 0;
  int _minute = 0;
  int _seconds = 0;

  String _digitsecond = "00";
  String _digitminute = "00";
  String _digithour = "00";

  bool _startEnable = true;
  bool _stopEnable = false;
  bool _continueEnable = false;

  int get hour => _hour;
  int get minute => _minute;
  int get seconds => _seconds;

  String get digitsecond => _digitsecond;
  String get digitminute => _digitminute;
  String get digithour => _digithour;

  bool get startEnable => _startEnable;
  bool get stopEnable => _stopEnable;
  bool get continueEnable => _continueEnable;

  void startTimer() {
    _hour = 0;
    _minute = 0;
    _seconds = 0;
    _startEnable = false;
    _stopEnable = true;
    _continueEnable = false;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localsecond = _seconds;
      int localminute = _minute;
      int localhour = _hour;

      if (localsecond < 59) {
        localsecond++;
      } else if (localsecond == 59) {
        localsecond = 0;
        if (localminute == 59) {
          localhour++;
          localminute = 0;
        } else {
          localminute++;
        }
      }
      _seconds = localsecond;
      _minute = localminute;
      _hour = localhour;

      _digitsecond = (_seconds >= 10) ? "$seconds" : "0$seconds";
      _digitminute = (_minute >= 10) ? "$minute" : "0$minute";
      _digithour = (_hour >= 10) ? "$hour" : "0$hour";

      notifyListeners();
    });
  }

  void stopTimer() {
    if (_startEnable == false) {
      _startEnable = true;
      _continueEnable = true;
      _stopEnable = false;
      _timer!.cancel();
    }
    notifyListeners();
  }

  void continueTimer() {
    _startEnable = false;
    _stopEnable = true;
    _continueEnable = false;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localsecond = _seconds;
      int localminute = _minute;
      int localhour = _hour;

      if (localsecond < 59) {
        localsecond++;
      } else if (localsecond == 59) {
        localsecond = 0;
        if (localminute == 59) {
          localhour++;
          localminute = 0;
        } else {
          localminute++;
        }
      }
      _seconds = localsecond;
      _minute = localminute;
      _hour = localhour;

      _digitsecond = (_seconds >= 10) ? "$seconds" : "0$seconds";
      _digitminute = (_minute >= 10) ? "$minute" : "0$minute";
      _digithour = (_hour >= 10) ? "$hour" : "0$hour";
      notifyListeners();
    });
  }

  void reset() {
    _hour = 0;
    _minute = 0;
    _seconds = 0;

    _digitsecond = "00";
    _digitminute = "00";
    _digithour = "00";
    notifyListeners();
  }
}
