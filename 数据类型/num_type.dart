void main() {
  // num 为数值类型的泛型，自动识别整型与浮点类型
  // dart 中数值类型只有 int 与 double 两种类型
  num a = 10;
  a = 12.5;
  print(a);

  // int 类型只能存储整型
  int b = 20;
//  b = 12.3;
  print(b);

  // double类型只能使用浮点类型
  double c = 10.3;
  print(c);

  /** 加(+) 减(-) 乘(*) 除(/) 除法取整(~/) 取余(%)
   * 除法是保留到 double 类型最大小数点位数 小数点后13位 */
  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);
  print(b ~/ c);
  print(b % c);

  // 打印出 NaN 表示非数字 即0/00的情况
  print(0/0);

  // b = 20 isEven 是否为偶数  isOdd 是否为奇数
  print(b.isEven); // true
  print(b.isOdd); // false
  print(b.isNaN);
  print(b.isInfinite);
  print(b.isNegative);

  num t1 = 0.0;
  num t2 = 0.0;
  print((t1/t2).isNaN); // true

  print((3/0).isInfinite); // true
  print(0/5);

  // 绝对值
  print((-100).abs());

  // 取整处理
  num f = 10.5;
  print(f.round()); // 11 四舍五入
  print(f.floor()); // 10 不大于10.5的最大整数
  print(f.ceil()); // 不小于10.5 的最小整数

  print(f.toInt()); // 转整型
  print(10.toDouble()); // 转double类型
}