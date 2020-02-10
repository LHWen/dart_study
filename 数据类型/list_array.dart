// list 即数组
void main() {
  var list1 = [1, 2, 3, 'dart', true];
  print(list1);
  print(list1[2]); // 获取元素 通过下标

  list1[1] = 'H';
  print(list1[1]);
  print(list1.length);

  // 不可修改数组
  var arr = const [1, 2, 3];
  print(arr);

  // 常用操作
  var array = ['hello', 'dart'];
  print(array.length);
  array.add('string');
  print(array);
  array.insert(1, 'swift'); // 在下标1 位置插入新元素 原来该位置以及后面元素整体后移
  print(array);
  array.remove('swift'); // 删除元素
  print(array);

  print(array.indexOf('dart')); // 查找元素，返回元素下标，没找到返回-1
//  array.sort(); // 排序
//  print(array);

  print(array.sublist(1)); // 截取 从下标1开始到最后 包含开始下标
  print(array.sublist(1,2)); // 截取从下标 x1 开始到下标 x2 包含x1 不包含x2

  // 遍历数组 each里面传递方法
  array.forEach(print);

  array.clear(); // 清空数组
  print(array);
}