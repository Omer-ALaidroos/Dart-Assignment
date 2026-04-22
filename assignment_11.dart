void main()

{
  //Task 1

  Car myCar = Car('Toyota', 'Corseda');
  print('Brand: ${myCar.brand}, Model: ${myCar.model}, Wheels: ${Car.numberOfWheels}');
  
 

}
 //Task 1
 class Car {
  final String brand;
  String model;
  static const int numberOfWheels = 4;

  Car(this.brand, this.model);
 }