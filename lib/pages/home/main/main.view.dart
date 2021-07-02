// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_disposal_app/config/theme.dart';
import 'package:loan_disposal_app/pages/home/main/main.viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'components/top_case_count.dart';
import 'components/top_cricle.dart';

class MainView extends ViewModelBuilderWidget<MainViewModel> {
  @override
  MainViewModel viewModelBuilder(BuildContext context) => MainViewModel();

  @override
  Widget builder(
    BuildContext context,
    MainViewModel model,
    Widget child,
  ) {
    return ListView(
      children: [
        //  页面头部，蓝色背景容器
        Container(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [ThemeColor.secondColor, ThemeColor.primaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            children: [TopCricle(model.moneyTotal), TopCaseCount()],
          ),
        )
      ],
    );
  }
}
