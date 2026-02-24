import 'package:flutter/material.dart';
import '../models/doctor.dart';
import 'package:faker/faker.dart' hide Image, Color;

class AllDoctors with ChangeNotifier {
  List<Doctor> all_doctors = List.generate(
    10,
    (index) => Doctor(
      id: index.toString(),
      name: 'Dr. ${faker.person.name()}',
      specialization: faker.job.title(),
      imageURL: 'https://picsum.photos/id/$index/200',
      schedule: faker.date.dateTime().toString(),
    ),
  );

  List<Doctor> get allDoctors {
    return [...all_doctors];
  }

  // void addDoctor(Doctor doctor) {
  //   all_doctors.add(doctor);
  //   notifyListeners();
  // }

  void toggleFavorite(Doctor doctor) {
    doctor.isFavorite = !doctor.isFavorite;
    notifyListeners();
  }
}