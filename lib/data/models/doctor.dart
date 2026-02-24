import 'package:flutter/material.dart';


class Doctor with ChangeNotifier {
  final String id;
  final String name;
  final String specialization;
  final String imageURL;
  final String schedule;

  Doctor({required this.id, required this.name, required this.specialization, required this.imageURL, required this.schedule});

  bool isFavorite = false;


}