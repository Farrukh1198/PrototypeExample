import 'package:prototype/prototype.dart';

void main(List<String> arguments) {
  Map<String, dynamic> firstDriverData = {
    'id': 1,
    'name': 'Farrukh',
    'vehicle': 'MB G63',
    'tariff': 'premium'
  };
  Map<String, dynamic> secondDriverData = {
    'id': 2,
    'name': 'Pavlo',
    'vehicle': 'BMW X6',
    'tariff': 'premium'
  };
  DriverData firstDriver = DriverData(firstDriverData);
  print('---'*30);
  print('First driver:\n${firstDriver.getData()}');
  DriverData secondDriver = firstDriver.clone();
  secondDriver.writeData(secondDriverData);
  print('Second driver:\n${secondDriver.getData()}');
  print('---'*30);
  print('Hash code of first driver:\n${firstDriver.hashCode}\nHash code of second driver:\n${secondDriver.hashCode}');
  print('---'*30);
  print('Are first driver and second driver identical?: ${identical(firstDriver, secondDriver)}');
}
