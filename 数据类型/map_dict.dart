// map键值对 key-value 对应 oc 中 dict
void main() {
  // key or value 可以是任何类型
  var m1 = {'first':'dart', 't':1, 2:'three', true:'TRUE'};
  print(m1);

  // 获取
  print(m1['first']);
  // 修改值
  m1['t'] = 'test';
  print(m1);
  print(m1.length);
  print(m1.isNotEmpty);
  print(m1.keys); // 获取所有的key
  print(m1.values); // 获取所有value
  print(m1.containsKey('t')); // key 中是否包含 t
  print(m1.containsValue('C')); // value中是否包含 C

  m1.remove(2); // 移除key 为1的值
  print(m1);

  // 与list中调用循环一致传入方法
  m1.forEach(func1);

  var list = ['1', '2', '3', '4'];
  print(list.asMap()); // {0: 1, 1: 2, 2: 3, 3: 4}

  // 不可修改map
  var m2 = const {'f':'dart', 't':'test', 's':'string'};
  print(m2);

  var m3 = new Map();
}

void func1 (key, value) {
  print('key = $key, value = $value');
}