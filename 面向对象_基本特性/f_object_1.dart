import 'person.dart';

/// 面向对象
void main(List args) {
  var per = Person();
  per.name = 'sun';
  per.age = 16;
  per.work();
  print('per name is ${per.name}');
  print('address is ${per.addr}');

}