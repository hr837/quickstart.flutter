// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_disposal_app/pages/home/my/my.viewmodel.dart';
import 'package:stacked/stacked.dart';

class MyView extends ViewModelBuilderWidget<MyViewModel> {
  @override
  MyViewModel viewModelBuilder(BuildContext context) => MyViewModel();

  @override
  Widget builder(
    BuildContext context,
    MyViewModel model,
    Widget child,
  ) {
    return Center(
      child: Column(children: [Text("你好，${model.name}")]),
    );
  }
}
