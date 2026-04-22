

import 'dart:isolate';

Future<void> main() async
{
  int n = 40; 
  print('Calculating Fibonacci of $n...');

  
  int result = await Isolate.run(() => fibonacci(n));

  print('Fibonacci of $n is $result');

}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
