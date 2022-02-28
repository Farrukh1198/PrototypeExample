abstract class IDriverData {
  DriverData clone();
}

class DriverData implements IDriverData {
  Map<String, dynamic> data;
  
  DriverData({this.data = defaultData});
  factory DriverData._(DriverData driverData) {
    return DriverData(data: driverData.data);
  }
  void writeData(Map<String, dynamic> dataToWrite) {
    data = dataToWrite;
  }
  Map<String, dynamic> getData() {
    return data;
  }

  @override
  DriverData clone() {
    return DriverData._(this);
  }
}

const Map<String, dynamic> defaultData = {
    'id': 1,
    'name': 'Farrukh',
    'vehicle': 'MB G63',
    'tariff': 'premium'
  };