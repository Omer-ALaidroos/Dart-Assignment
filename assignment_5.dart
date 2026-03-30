void main()
{
  //Task 1

  List<String> employeemNames = ["Omer", "Ahmed", "Ali"];

  employeemNames.add("Sara");
  employeemNames.removeAt(1);
  employeemNames.sort();

  print(employeemNames);

  //Task 2
  Map<String,int> studentAcadimic = {
    "Math": 85,
    "Physics": 90,
    "Chemistry": 78
  };
 List<int> Grades = studentAcadimic.values.toList();
  print(Grades);

  //Task 3
  
  final result = performOperation();

  
  bool status = result.$1;
  String message = result.$2;
  int code = result.$3;

  print("Status: $status");
  print("Message: $message");
  print("Code: $code");
}


(bool, String, int) performOperation() {
  bool success = false;
  String errorMessage = "Something went wrong";
  int errorCode = 404;

  return (success, errorMessage, errorCode);


}