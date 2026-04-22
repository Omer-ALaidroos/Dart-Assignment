void main()
{
  void divideNumbers(double a, double b) {
    try {
      if (b == 0) {
        throw DivisionException("Divisor cannot be zero.");
      }
      double result = a / b;
      print("Result: $result");
    } catch (e) {
      print(e);
    } finally {
      print("Operation attempted");
    }
  }

  divideNumbers(10, 2);
  divideNumbers(10, 0);

}


class DivisionException implements Exception {
  String message;
  DivisionException(this.message);

  @override
  String toString() {
    return "DivisionException: $message";
  }
}