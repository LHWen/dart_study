// 方法定义
void main(List args) {
  print(args);

  print(getPerson('弦', 18));

  p_person('Name', 18);

  p_person2('平安', 20);

  /// 可选参数 必选参数必须放在可选参数前
  print(printPerson('String'));
  print(printPerson('String', age: 19));
  print(printPerson('String', age: 19, gender: 'male'));

  print(printPerson2('String'));
  print(printPerson2('String', 19));
  print(printPerson2('String', 19, 'male'));

  /// 默认参数值 基于可选参数值
  print(str_defaultValue('default'));
  print(str_defaultValue('default', age: 19));
  print(str_defaultValue('default', age: 19, gender: 'male'));

  /// 方法对象
  var func = printHello();
  func;

  /// 匿名方法 可赋值给变量，通过变量进行调用，可在其他方法中直接调用或传递给其他方法
  var f1 = (str) {
    print("Hello 匿名方法 参数--$str");
  };
  f1('30');

  /// 闭包 访问方法中元素
  var f = a();
  f();
  f();
  f();
}

String getPerson(String name, int age) {

  return 'name = $name, age = $age';
}

void p_person(String name, int age) {
  print('name = $name, age = $age');
}

p_person2(name, age) {
  print('name = $name, age = $age');
}

/// 可选参数{}
String printPerson(name, {age, gender}) {
  return '{name = $name, age = $age, gender = $gender}';
}
/// 可选参数[]
String printPerson2(name, [age, gender]) {
  return '[name = $name, age = $age, gender = $gender]';
}

/// 默认参数值
String str_defaultValue(name, {age = 23, gender = 'fe'}) {
  return '{name = $name, age = $age, gender = $gender}';
}

/// 方法对象
void printHello() {
  print('Hello');
}

/// 闭包
a() {
  int count = 0;

  printCount() {
    print(count++);
  }

  return printCount;
}