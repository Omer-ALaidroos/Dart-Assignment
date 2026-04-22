void main()
{
  Future<Object> fetchUserData() async {
    await Future.delayed(Duration(seconds: 3)); 
    return {
      'name': 'Omer Alaidroos',
      'age': 22,
      'email': 'Omer@gmail.com'
    };
  }

  print('Fetching user data...');
  fetchUserData().then((data) {
    print('User Data: $data');
  }).catchError((error) {
    print('Error fetching user data: $error');
  });
}
