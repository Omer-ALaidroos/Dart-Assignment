void main() {
  List<User> users = [
    AdminUser(),
    RegularUser(),
    GuestUser(),
  ];

  for (var user in users) {
    user.getPermissions();
  }

  var validate = Validator();

  print(validate("Hi"));     
  print(validate("Hello")); 
}

enum UserRole {
  Admin,
  User,
  Guest,
}
abstract class User {
  UserRole role;

  User(this.role);

  void getPermissions();
}

class AdminUser extends User {
  AdminUser() : super(UserRole.Admin);

  @override
  void getPermissions() {
    print("Admin: Full access");
  }
}

class RegularUser extends User {
  RegularUser() : super(UserRole.User);

  @override
  void getPermissions() {
    print("User: Limited access");
  }
}

class GuestUser extends User {
  GuestUser() : super(UserRole.Guest);

  @override
  void getPermissions() {
    print("Guest: Minimal access");
  }
}
class Validator {
  bool call(String input) {
    return input.isNotEmpty && input.length >= 3;
  }
}