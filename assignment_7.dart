void main() {
 //Task 1
  var location = ('Seyiun', 45.03, 12.77);

  var (cityName, longitude, latitude) = location;

 
  print('City: $cityName');
  print('Longitude: $longitude');
  print('Latitude: $latitude');

  //Task 2
 
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  var [first, ..., last] = numbers;

  print('First: $first');
  print('Last: $last');

  //Task 3


  var response = {'status': 'success', 'data': 'This is the data'};

  switch (response) {
    case {'status': 'success', 'data': var data}:
      print('Data: $data');
      break;
    case {'status': 'failure'}:
      print('Error: Operation failed');
      break;
    default:
      print('Unknown status');
  }

  //Task 4  
  var obj = [0, 4];

  if (obj case [0, var secondElement]) {
    print('The list has exactly two elements and the first element is 0.');
    print('Second element: $secondElement');
  } else {
    print('The list does not match the pattern.');
    
  }
}