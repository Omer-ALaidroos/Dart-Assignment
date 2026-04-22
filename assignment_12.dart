void main()
{
  //Task 1

  Employee employee = Employee();
  Manager manager = Manager();
  SeniorManager seniorManager = SeniorManager();

  employee.work(); 
  manager.work(); 
  seniorManager.work();

  
}
//Task 1


  class Employee {
  void work() {
    print('Employee is working');
  } 
}

  class Manager extends Employee {
  @override
  void work() {
    print('Manager is managing');
  }
}

  class SeniorManager extends Manager {
  @override
  void work() {
    print('Senior Manager work in  management');
  }
}
    