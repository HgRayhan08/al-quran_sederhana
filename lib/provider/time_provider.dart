import 'dart:async';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class TimeProvider with ChangeNotifier {
  // DateTime now = DateTime.now();
  // String _jam = "";
  // String get angka => _jam;

  String _clock = "Jam sekarang";
  String get jam => _clock;
  // ignore: unused_field
  late Timer? _timer;

  void clock() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _clock = DateFormat('HH:mm:ss').format(DateTime.now());
      notifyListeners();
    });
  }
}
