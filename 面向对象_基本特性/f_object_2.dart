/// 计算属性
void main() {

  var rect = Rectangle();
  rect.width = 20;
  rect.height = 10;

  print(rect.area());
  print('计算属性 get areag = ${rect.areag}');
}

class Rectangle {
  num width, height;

  num area() {
    return width * height;
  }

  // 计算属性赋值 set
  set areas(w) {
    width = w / 20;
  }
  
  // 计算属性 get 为关键字
  num get areag {
    return width * height;
  }

}