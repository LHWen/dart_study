void main() {

  var l1 = List<int>();
  l1.add(1);

  var utils = Utils<int>();
  utils.put(1);

}

class Utils<T> {

  T element;

  void put(T element) {
    this.element = element;
  }
}