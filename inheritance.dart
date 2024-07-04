class Vehicle {
  int _vehicleId;
  String _vehicleName;
  String _vehicleModel;

  Vehicle(this._vehicleId, this._vehicleName, this._vehicleModel);

  set setId(int id) {
    _vehicleId = id;
  }

  set setName(String name) {
    _vehicleName = name;
  }

  set setModel(String model) {
    _vehicleModel = model;
  }

  int get getId => _vehicleId;

  String get getName => _vehicleName;

  String get getModel => _vehicleModel;

  void showvehicleInformation() {
    print(
        "vehicleId: $_vehicleId\nvehicleName: $_vehicleName\n vehicleModel: $_vehicleModel");
  }
}

class Car extends Vehicle {
  String _carType;

  Car(int id, String name, String model, this._carType)
      : super(id, name, model);

  void showCarInformation() {
    print(
        "carId: $_vehicleId\ncareName: $_vehicleName\n carModel: $_vehicleModel\n$_carType");
  }
}

void main() {
  Car c1 = Car(12, "Honda City", "2024", "Down");
  c1.showvehicleInformation();
  c1.showCarInformation();
}
