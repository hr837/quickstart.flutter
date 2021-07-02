import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TopCricle extends StatelessWidget {
  final String countMoney;
  final exp = RegExp(r"\d+");

  /// [countMoney] 统计金额
  TopCricle(this.countMoney);

  // 金额整数部分
  String get _round => countMoney.split(".")[0];

  // 金额小数部分
  String get _decimal => countMoney.split(".")[1];

  double get _roundSize {
    if (_round.length < 6) {
      return 36;
    } else if (_round.length < 9) {
      return 28;
    } else if (_round.length < 11) {
      return 24;
    } else {
      return 20;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
        radius: 200,
        lineWidth: 10.0,
        percent: 0.8,
        center: DefaultTextStyle(
          style: TextStyle(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: _round, style: TextStyle(fontSize: _roundSize)),
                  TextSpan(text: '.$_decimal元')
                ]),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  '待催收金额',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xFF237fc5),
        progressColor: Colors.white,
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
        animationDuration: 2000,
        reverse: true);
  }
}
