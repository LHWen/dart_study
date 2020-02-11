import 'person.dart';

void main() {
  var student = Student();
  student.study();
  student.name = 'tom';
  student.age = 18;
  student.run();
  print(student.isAdult);
}

class Student extends Person {

  void study() {
    print('Student study...');
  }

  // 复写方法
  @override
  bool get isAdult {
    return age > 15;
  }

  @override
  void run() {
    print('student run ...');
  }
}