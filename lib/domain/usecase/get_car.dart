import 'package:car_rental/data/model/car_model.dart';
import 'package:car_rental/domain/repositories/car_repositoriy.dart';

class GetCars {
  final CarRepositoriy repository;

  GetCars(this.repository);

  Future<List<CarModel>> call() async {
    return await repository.fetchCars();
  }
}
