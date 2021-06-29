// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_disposal_app/config/theme.dart';
import 'package:stacked/stacked.dart';
import 'home.viewmodel.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  @override
  bool get reactive => true;

  @override
  bool get createNewModelOnInsert => false;

  @override
  bool get disposeViewModel => true;

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel model,
    Widget child,
  ) {
    return Scaffold(
      body: model.pageList[model.currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        items: model.pageList
            .map((page) =>
                BottomNavigationBarItem(icon: page.icon, label: page.title))
            .toList(),
        currentIndex: model.currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: ThemeColor.primaryColor,
        onTap: model.onChangePage,
      ),
    );
  }
}
