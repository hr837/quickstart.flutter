// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_disposal_app/pages/home/main/components/main_top.view.dart';
import 'package:loan_disposal_app/pages/home/main/main.viewmodel.dart';
import 'package:stacked/stacked.dart';

class MainView extends ViewModelBuilderWidget<MainViewModel> {
  @override
  MainViewModel viewModelBuilder(BuildContext context) => MainViewModel();

  @override
  Widget builder(
    BuildContext context,
    MainViewModel model,
    Widget child,
  ) {
    return Center(
      child: ListView(
        children: [MainTopView()],
      ),
    );
  }
}
