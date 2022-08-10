import 'package:flutter/foundation.dart';

class Ship {
  String name, capacity, crew, inauguralDate;

  Ship.fromJson(Map<String, dynamic> json)
      : name = json['shipName'],
        capacity = json['shipFacts']['passengerCapacity'],
        crew = json['shipFacts']['crew'],
        inauguralDate = json['shipFacts']['inauguralDate'];
}
