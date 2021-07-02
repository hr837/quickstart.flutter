// ViewModel
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loan_disposal_app/utils/filter.dart';
import 'package:logger/logger.dart';

final logger = Modular.get<Logger>();

class MainViewModel extends ChangeNotifier {
  String moneyTotal = '0.00';

  MainViewModel() {
    moneyTotal = toThousands(123456);
    Timer(Duration(seconds: 5), _updateMoney);
  }

  void _updateMoney() {
    print('123');
    moneyTotal = toThousands(1000000);
    notifyListeners();
  }
}
