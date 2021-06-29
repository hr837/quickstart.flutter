// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';

class MainViewModel extends ChangeNotifier {
  final logger = Modular.get<Logger>();

  String moneyTotal = "";

  MainViewModel() {
    moneyTotal = '1234.00';
  }
}
