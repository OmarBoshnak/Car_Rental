class CarModel {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  CarModel(
      {required this.model,
      required this.distance,
      required this.fuelCapacity,
      required this.pricePerHour});

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
        model: json['model'],
        distance: json['distance'],
        fuelCapacity: json['fuelCapacity'],
        pricePerHour: json['pricePerHour']);
  }
}
