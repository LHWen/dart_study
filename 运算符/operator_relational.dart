// 关系逻辑运算符
void main() {
  int a = 10;
  int b = 9;

  // == 内容比较，非对象
  print(a == b);
  print(a != b);
  print(a >b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  String s1 = '123';
  String s2 = '123';
  print(s1 == s2); // true

  // ! && ||
  bool isTrue = true;
  print(!isTrue);

  bool isFalse = false;
  print(isTrue || isFalse);

  print(isTrue && isFalse);

  // 赋值运算符
  // = 、??=（如果元素没有值将该值赋值给该元素，如果有值使用原来的值）
  int c = 3;
  c ??= 19;
  print(c); // c = 3;

  int d;
  d ??= 6;
  print(d); // 6

  // 三目运算符 t ? x : y;
  String ts1 = 7 > 6 ? 'false' : 'true';
  print(ts1);
  // x ?? y   x为空使用 y  x不为空使用x
  String n1;
  String n2 = 'dart';
  String ts2 = n1 ?? n2;
  print(ts2);

  String m1 = 'flutter';
  String m2 = 'dart';
  String ts3 = m1 ?? m2;
  print(ts3);

}