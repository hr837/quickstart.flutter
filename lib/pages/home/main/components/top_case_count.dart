import 'package:flutter/material.dart';

class TopCaseCount extends StatelessWidget {
  final Color lineColor = Color(0xFFB2D5FF);

  /// 创建统计项子项
  Column createItem(String name, int count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          name,
          style: TextStyle(color: Color(0xFFCAE2FF), fontSize: 12),
        ),
        Text(
          count.toString(),
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }

  // 分割线
  final divider = VerticalDivider(
    color: Color(0xffb2d5ff),
    thickness: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 24),
        height: 47,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          createItem("风险案件总数", 35),
          divider,
          createItem("逾期案件总数", 20),
          divider,
          createItem("合计案件总数", 20),
        ]));
  }
}
