import 'package:car_rental/data/model/car_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});
  Future<List<CarModel>> getCar() async {
    var snapshot = await firestore.collection('cars').get();
    return snapshot.docs.map((doc) => CarModel.fromJson(doc.data())).toList();
  }
}
