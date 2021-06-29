// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_disposal_app/pages/home/main/main.view.dart';
import 'package:loan_disposal_app/pages/home/my/my.view.dart';

class HomeViewModel extends ChangeNotifier {
  int currentIndex = 0;

  List<PageItemConfig> pageList = [
    new PageItemConfig("首页", Icons.home, MainView()),
    new PageItemConfig("我的", Icons.person_rounded, MyView())
  ];

  void onChangePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

/// 子页面配置
class PageItemConfig {
  /// 标题
  String title;

  IconData _icon;

  /// 页面部件
  Widget page;

  /// 图标
  Icon get icon => Icon(this._icon);

  PageItemConfig(this.title, this._icon, this.page);
}
