/// 对象操作符
void main(List args) {

  /// 条件成员访问 ?. 判断是否为空，为空不再执行
//  Person person;
//  person?.name;

  /// as
  var person;
  person = '';
  person = Person();
  // as 在上面情况不确定是什么类型时，使用as转类型进行调用
  (person as Person).work();

  /// is,is! 是否指定类型 is->属于该对象判断 is!->不属于该对象判断
  var per;
  per = '';
  if(per is Person) {
    per.work();
  }
  if(per is! Person) {
    print('如果 per 不是 Person 对象输出该语句');
  }

  /// 洁便操作
  var pr = Person();
  pr..name = 'zhou'
    ..age = 18
    ..work();

  /// 对象中的call方法
//  pr(); // 1
  var pr2 = Person();
//  pr2('Wen', 24); // 2 带参数
  print(pr2('Wen', 24)); //3  返回值
}

/// 条件成员访问
class Person {
  String name;
  int age;

  void work() {
    print('name is $name, age is $age');
  }

  /// call方法 名称必为call 1
//  void call() {
//    print('call function name is $name, age is $age');
//  }

//  void call(String name, int age) {
//    print('call2 function name is $name, age is $age');
//  }
  String call(String name, int age) {
    return 'call return  name is $name, age is $age';
  }
}