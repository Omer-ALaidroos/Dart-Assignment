
void main() {
  // Task 1
  late String userProfileDescription;

 
  userProfileDescription = "I am a new Flutter developer.";


  /*
  
    we use late because we want to declare a variable that will be initialized later,
     but we are sure that it will be initialized before it is used.
   */


  // ----------------------------

  // Task 2

  
  const String appVersion = "1.0.0";

  
  final DateTime loginTime = DateTime.now();

  print("App Version: $appVersion");
  print("Login Time: $loginTime");


  // ----------------------------

  // Task 3

 
  DateTime getCurrentTime() {
    return DateTime.now();
  }

  //a final variable can be initialized at runtime,
  // so it can accept the value returned by the function.
  final DateTime time1 = getCurrentTime();
 

  // a const variable must be initialized with a compile-time constant value,
  // const DateTime time2 = getCurrentTime(); 
}