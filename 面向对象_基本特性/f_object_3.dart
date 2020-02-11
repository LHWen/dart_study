/// 构造方法
void main() {
  var per = Person('Tom', 18);

  print('name is ${per.name}, age is ${per.age}');

  /// 常量构造方法 类为不可变状态
  const perC = FinalClass();
  perC.work();
  print('per const Final name is ${perC.name}');

  /// 工厂构造方法
  print('工厂构造方法返回内容为：${Logger('Tole')}');

  /// 初始化列表，在构造方法执行前执行，使用逗号分隔初始化表达式，初始化列表常用与设置final变量的值
  var initC = InitListClass.withMap({'name':'SunString', 'age':18, 'gender':'2'});
  initC.work();

  // 静态成员
  var page = Page();
  page.scrollUp();
  Page.scrollDown();
}

class Person {
  String name;
  int age;
  final String gender = '1';

  Person(this.name, this.age); // 构造方法
//  Person(String name, int age) {
//    this.name = name;
//    this.age = age;
//  }

  // 单独传入一个参数的构造方法, class.whitXXX
  Person.withName(this.name);
}

/// 常量构造方法 所有属性为final
class FinalClass {
  final String name = 'Json';
  final int age = 25;
  final String address = '零陵郡';

  // 需要有const 的无参构造方法，不然会报错
  const FinalClass();

  void work() {
    print('working ... ');
  }
}

/// 工厂构造方法 factory
class Logger {
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  // 工厂构造方法，直接调用返回
  factory Logger(String name) {
    if(_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  // 私有方法
  Logger._internal(this.name);

  void log(String msg) {
    print(msg);
  }
}

/// 初始化列表，在构造方法执行前执行，使用逗号分隔初始化表达式，初始化列表常用与设置final变量的值
class InitListClass {
  String name;
  int age;
  final String gender;

  InitListClass(this.name, this.age, this.gender);

  // 初始化gender 将会在构造方法前赋值
  InitListClass.withMap(Map map) : gender = map['gender'] {
    name = map['name'];
    age = map['age'];
  }

  void work() {
    print('name is $name, age is $age, gender is $gender');
  }
}

/// 静态成员
class Page {
   static int currentPage = 1;

  // 下拉
  static void scrollDown() {
    currentPage = 1;
    print('currentPage = $currentPage, loading...');
  }

  // 上拉
  void scrollUp() {
    currentPage++;
    print('currentPage = $currentPage, scroll up loading...');
  }
}