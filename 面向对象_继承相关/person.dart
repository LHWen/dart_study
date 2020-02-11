class Person {
  String name;
  int age;
  String _birthday;

  bool get isAdult {
    return age > 18;
  }

  void run() {
    print('Person run...');
  }
}