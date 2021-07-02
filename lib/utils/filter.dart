/// 格式化金额为千分位字符串
/// [money] 要格式化的金额
/// [fixed] 小数保留位数
String toThousands(double money, [int fixed = 2]) {
  if (money.isNaN) return "";
  var moneyStr = money.toStringAsFixed(fixed);
  var exp = RegExp(r'(-?\d+)(\d{3})');
  // split
  var partRound = moneyStr.split('.')[0];
  var partDecimal = moneyStr.split('.')[1];
  while (exp.hasMatch(partRound)) {
    partRound = partRound.replaceFirstMapped(exp, (m) => "${m[1]},${m[2]}");
  }
  return "$partRound.$partDecimal";
}
