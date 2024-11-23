import 'package:car_rental/data/datasources/firebase_data_source.dart';
import 'package:car_rental/data/model/car_model.dart';
import 'package:car_rental/domain/repositories/car_repositoriy.dart';

class CarRepositoryImpl implements CarRepositoriy {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);
  @override
  Future<List<CarModel>> fetchCars() {
    return dataSource.getCar();
  }
}
