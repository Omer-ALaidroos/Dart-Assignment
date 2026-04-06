 int counter = 0;
void main()
{
  //Task 1
  
  double calculateBMI(double weightInKg, double heightInMeters) {
    if (heightInMeters <= 0) {
      return -1; 
    }
    return weightInKg / (heightInMeters * heightInMeters);
  }

  
  double weight = 70.0; 
  double height = 1.75; 
  double bmi = calculateBMI(weight, height);
  print('Your BMI is: ${bmi.toStringAsFixed(2)}');


  //Task 2
 
  void displayName(String name, [String? title]) {
    if (title != null) {
      print('$title $name');
    } else {
      print('Mr. $name');
    }
  }

  
  displayName('John Doe');
  displayName('Jane Smith', 'Dr.');


  //Task 3


  void registerUser({required String username, required String email, String? password}) {
    print('Username: $username');
    print('Email: $email');
    if (password != null) {
      print('Password: $password');
    } else {
      print('Password not provided');
    }
  }

  
  registerUser(username: 'john_doe', email: 'john@example.com');
  registerUser(username: 'jane_smith', email: 'jane@example.com', password: 'password123');


  //Task 4
 

  void incrementCounter() {
    counter++;
  }

  print('Counter : $counter');
  incrementCounter();

  //Task 5
  bool isPositive (int number) => number > 0;
  print(isPositive(5));
  print(isPositive(-3));

}