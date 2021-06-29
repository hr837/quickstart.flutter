// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loan_disposal_app/store/auth.store.dart';

class Page3ViewModel extends ChangeNotifier {
  final authStore = Modular.get<AuthStore>();

  String name = "page3";
}
