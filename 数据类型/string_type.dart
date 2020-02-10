// 字符串
void main() {
  String str1 = 'string 1';
  print(str1);

  // ''' 创建多行字符串 打印出来会换行
  String str2 = '''Hello 
      Dart''';
  print(str2);

  String s = 'hello \n dart';
  print(s); // \n 进行换行
  String s1 = r'Hello \n dart';
  print(s1); // \n 相当于字符直接输出

  // 常用操作
  String s2 = 'This is my favorit language';
  print(s2 + ' New');
  print(s2 * 3); // 同一字符串多次相加
  // == 表示内容是否相同
  print(s1 == s2);
  print(s2.length); // 获取字符串长度
  print(s2.isEmpty); // 判断字符串是否为空
  print(''.isEmpty); // true  如果字符串没有初始化 该方法调用报错

  // 下标取值 跟数组下标取值一样
  print(s2[0]); // T

  int a = 1;
  int b = 2;
  print('a + b = ${a + b}'); //${} 表达式
  print('a = $a'); // $ 直接取值

  // 常用方法
  String fs = ' This is my favorit language New ';
  print(fs.contains('is')); // 是否包含
  print(fs.substring(0, 3)); // 截取 第 0 个开始 长度为3
  print(fs.startsWith('a')); // 以某个字符开始
  print(fs.endsWith('ew')); // 是否以某个字符结束
  print(fs.toLowerCase()); // 转小写
  print(fs.toUpperCase()); // 转大写
  print(fs.trim()); // 截取前后空格
  print(fs.trimLeft()); // 截取左边空格
  print(fs.trimRight() + 'N');// 截取最后的空格

  var lsit = fs.trim().split(' ');
  print(lsit);

  print(fs.replaceAll("my", 'MY')); // 替换

}