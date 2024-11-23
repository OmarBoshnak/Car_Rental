import 'package:car_rental/data/model/car_model.dart';

abstract class CarRepositoriy {
  Future<List<CarModel>> fetchCars();
}
