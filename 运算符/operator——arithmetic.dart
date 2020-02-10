// 运算符
void main() {
  num a = 10;
  num b = 20;

  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a~/b); // 除法取整
  print(a%b);

  // 先打印 执行完毕后再进行++ 或--操作
  print(a++); // 10
  print(b--); // 20

  // a = 11
  // b = 19
  a++;
  b--;
  print(a); // 12
  print(b); // 18

  // 先执行 ++ -- 操作再打印
  print(++a); // 13
  print(--b); // 17
}