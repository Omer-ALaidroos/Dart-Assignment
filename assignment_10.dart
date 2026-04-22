void main(){

  //Task 1

  String? name = null;
  if (name != null) {
    print('Hello, $name!');
  } else {
    print('Hello, Guest!');
  }
  //String email = null;

  //Task 2
 
  List<int>? numbers=null;
  List<int> moreNumbers = [4, 5, 6];
  List<int> allNumbers = [...?numbers, ...moreNumbers];
  print(allNumbers); 

  //Task 3

  String? username = null;
  String displayName = username ?? 'Guest';
  print('Hello, $displayName!');

  //Task 4

  
  String? nullableString = null;
  int? length = nullableString?.length;
  print('Length of the string: $length');

  //Task 5

 
  String? nonNullString ;
  print(nonNullString!.length);
  //Using the null assertion operator can be risky because if the value is actually null at runtime, it will throw a runtime exception (NullPointerException)

  

}