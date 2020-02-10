// 控制语句
void main() {

  num score = 90;
  if(score >= 90) {
    print('优');
  } else if(score >= 60) {
    print('合格');
  } else {
    print('不合格');
  }

  print('------ for ------');
  var list = [1, 2, 3, 4, 5];
  for(var index = 0; index < list.length; index++) {
    print(list[index]);
  }

  print('-----for in-----');
  for(var item in list) {
    print(item);
  }

  print('------ while ------');
  int count = 0;
  while(count < 3) {
    print(count++);
  }

  print('------ do while ------');
  do{
    print(count--);
  } while(count > 0);

  print('------ break-continue ------');
  for(var item in list) {
    if(item == 3) break;
    print(item);
  }

  for(var item in list) {
    if(item == 3) continue;
    print(item);
  }

  print('------ switch-case ------');
  String lau = 'dart';
  switch(lau) {
    case 'Dart':
      print('dart is flutter');
      break;
    case 'java':
      print('java is do');
      break;
    case 'dart':
      print('dart is fl');
      break;
     default:
       print('---------');
  }
}