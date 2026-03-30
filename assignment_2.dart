import 'dart:io';

void main() {

  //Task 1
 
  double cheese = 40;
  double pepsi = 30;
  double  chocolate = 50;

  
  double total = cheese + pepsi + chocolate;

  if (total > 100) {
  
    double tax = total * 0.15;
    total += tax;
   
  } else {
   
    total += 5;
    
  }

  print("Final total: $total");
// ----------------------------------------
  //Task 2
  User user1 = User(
    age: 25,
   isActive: true,
    role: "admin");

    bool hasAccess = (user1.age > 18 && user1.isActive) || (user1.role == "admin");

    print("User has access: $hasAccess");
// ----------------------------------------
  //Task 3
  bool isEvenAndDivisibleBySeven(int number) {
    if (number % 2 == 0 && number % 7 == 0) { {
     
      return true;
    }
    } else {
      return false;
    }
  }
  bool result = isEvenAndDivisibleBySeven(28);
  print("Is the number even and divisible by 7? $result");
// ----------------------------------------
  //Task 4

  
  print ("Enter first message:");
 
  String msg1 = stdin.readLineSync()!;

  print("Enter second string:");
  String msg2 = stdin.readLineSync()!;

  if(msg1.toLowerCase() == msg2.toLowerCase()){
    print("The messages are the same.");
  } else {
    print("The messages are different.");
  }
// ----------------------------------------


}

class User{
   late int age;
   late bool isActive;
   late String role;

   User({
    required this.age,
    required this.isActive,
    required this.role,
  });

}