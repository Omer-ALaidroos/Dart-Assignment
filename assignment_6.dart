//Task 1
typedef Handler = void Function(Map map);
//Task 2

class DataManager<T> {
  final List<T> _data = [];

  void add(T item) {
    _data.add(item);
  }

  List<T> getAll() {
    return List.unmodifiable(_data);
  }
}

void main() {
  final stringManager = DataManager<String>();
  stringManager.add("Type Safe Data");
}