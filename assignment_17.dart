 void main()
{
    List<int> numbers = [1, 2, 3, 4, 5];
  int sum = numbers.sumAll();
  String description = numbers.toDescription();

  print('Sum: $sum');
  print('Description: $description');
}

extension IntListExtensions on List<int> {
  int sumAll() {
    
      int sum = 0;
      for (int number in this) {
        sum += number;
      }
      return sum;
    
  }

  String toDescription() {
    return "This list contains ${this.length} elements.";
  }
}