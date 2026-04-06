import 'dart:io';
import 'dart:math';

void main()
{
  //Task 1

  int hoursWorked = 45;

  if (hoursWorked >= 40) {
    print('Excellent performance');
  } else if (hoursWorked >= 30) {
    print('Good performance');
  } else if (hoursWorked >= 20) {
    print('Average performance');
  } else {
    print('Needs improvement');
  }

//Task 2


  String fileType = 'pdf';

  switch (fileType) {
    case 'pdf':
      print('Processing PDF files');
      break;
    case 'png':
      print('Processing PNG files');
      break;
    case 'docx':
      print('Processing DOCX files');
      break;
    default:
      print('Unsupported file type');
  }

//Task 3

  OrderState orderStatus = OrderState.processing;

  String orderStatusText = switch (orderStatus) {
    OrderState.pending => 'قيد الانتظار',
    OrderState.processing => 'قيد المعالجة',
    OrderState.shipped => 'تم الشحن',
    OrderState.delivered => 'تم التسليم',
  };

  print('Order Status: $orderStatusText');

  //Task 4  Loops

  List<double> prices = [10.0, 15.0, 20.0, 25.0];
  double taxRate = 0.5;  
   double totalPrice = 0.0;

  for (var price in prices) {
    totalPrice += price + (price * taxRate);
  }

 print('Total Price: ${totalPrice.toStringAsFixed(2)}');


  //Task 5
 
  int secretNumber = 7;
  int randomNumber = -1;

  while (randomNumber != secretNumber) {
      randomNumber = Random().nextInt(11); 
    print('Generated number: $randomNumber');
  }

  print('Secret number matched! The number is: $secretNumber');

  //Task 6
 
  String password = '';

  do {
    print('Enter a password:');
    password = stdin.readLineSync()!;
  } while (password.length < 8);

  print('Password accepted: $password');

}
enum OrderState { pending, processing, shipped, delivered }
