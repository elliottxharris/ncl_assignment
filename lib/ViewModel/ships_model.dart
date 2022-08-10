import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ncl_assignment/Model/ship_model.dart';
import 'package:ncl_assignment/Model/ship_type_model.dart';
import 'package:http/http.dart' as http;

class ShipsModel extends ChangeNotifier {
  final Map<String, Ship> _ships = {};
  bool _loading = false;
  Ship? _selectedShip;

  Ship? get ship => _selectedShip;
  bool get loading => _loading;

  Future<void> selectShip(ShipType type) async {
    if (!_ships.containsKey(type.name)) {
      _loading = true;
      notifyListeners();
      var res = await http.get(Uri.parse(type.url));

      if (res.statusCode == 200) {
        Ship ship = Ship.fromJson(jsonDecode(res.body));
        _ships[type.name] = ship;
        _selectedShip = ship;
        _loading = false;
        notifyListeners();
      }
    } else {
      _selectedShip = _ships[type.name];
      _loading = false;
      notifyListeners();
    }
  }
  
}