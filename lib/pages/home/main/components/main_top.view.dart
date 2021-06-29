import 'package:flutter/material.dart';
import 'package:loan_disposal_app/config/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

final Color _textColor = Colors.white;

class MainTopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [ThemeColor.secondColor, ThemeColor.primaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        children: [TopCricle(), TopCaseCount()],
      ),
    );
  }
}

class TopCricle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
        radius: 200,
        lineWidth: 10.0,
        percent: 0.8,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(TextSpan(
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: _textColor),
                children: [
                  TextSpan(text: '1234', style: TextStyle(fontSize: 36)),
                  TextSpan(
                    text: '.00元',
                  )
                ])),
            Text(
              '待催收金额',
              style: TextStyle(color: _textColor),
            )
          ],
        ),
        backgroundColor: Color(0xFF237fc5),
        progressColor: _textColor,
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
        animationDuration: 1000,
        reverse: true);
  }
}

class TopCaseCount extends StatelessWidget {
  final Color titleColor = Color(0xFFCAE2FF);
  final Color lineColor = Color(0xFFB2D5FF);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    '风险案件总数',
                    style: TextStyle(color: titleColor),
                  ),
                ),
                Text(
                  '35',
                  style: TextStyle(color: _textColor),
                )
              ],
            ),
            SizedBox(
              width: 1,
              height: 45,
              child: DecoratedBox(
                decoration: BoxDecoration(color: lineColor),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    '逾期案件总数',
                    style: TextStyle(color: titleColor),
                  ),
                ),
                Text(
                  '20',
                  style: TextStyle(color: _textColor),
                )
              ],
            ),
            SizedBox(
              width: 1,
              height: 45,
              child: DecoratedBox(
                decoration: BoxDecoration(color: lineColor),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    '合计案件总数',
                    style: TextStyle(color: titleColor),
                  ),
                ),
                Text(
                  '20',
                  style: TextStyle(color: _textColor),
                )
              ],
            )
          ],
        ));
  }
}
