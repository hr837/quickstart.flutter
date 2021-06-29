// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';

class MyViewModel extends ChangeNotifier {
  final logger = Modular.get<Logger>();

  String name = "";

  MyViewModel() {
    name = '张三';
  }
}
