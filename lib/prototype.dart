class DriverData {
  Map<String, dynamic> _data;

  DriverData(this._data);
  void writeData(Map<String, dynamic> data) {
    _data = data;
  }
  Map<String, dynamic> getData() {
    return _data;
  }

  clone(){
    return DriverData(_data);
  }
}