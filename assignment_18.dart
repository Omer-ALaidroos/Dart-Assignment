void main()
{

}
/**
 *  Create a class named Shape using the sealed modifier
• Define derived classes such as Circle and Square in the same file
• Attempt to extend Shape in a different file and observe the restrictions enforced by the sealed
modifier to ensure type safety.
 */

sealed class Shape {
  void draw() {
    print('Drawing a shape');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Square extends Shape {
  @override
  void draw() {
    print('Drawing a square');
  }
} 