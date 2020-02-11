/// 声明一个类 默认会生成 getter and setter 方法，使用final 声明的属性只有getter方法只读属性
class Person {
  String name;
  int age;
  final String addr = 'xxxxosfksdf';
  int _day = 20; // 私有属性外部无法赋值与调用
  /// 属性与方法前添加了下划线_ 表示私有的，外部调用时无法调用

  void work() {
    print('Name is $name, Age is $age, He is working...');
  }

  void _countDay() {
    print('私有方法外部无法调用');
  }
}