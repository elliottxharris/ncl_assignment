import 'package:ncl_assignment/Model/ship_model.dart';
import 'package:test/test.dart';

void main() {
  final Map<String, dynamic> json = {
    'shipName': 'test ship',
    'shipFacts': {
      'passengerCapacity': '2000',
      'crew': '300',
      'inauguralDate': '2000'
    }
  };

  Ship ship = Ship.fromJson(json);

  test('test ship from json', () {
    expect(ship.name, 'test ship');
    expect(ship.capacity, '2000');
    expect(ship.crew, '300');
    expect(ship.inauguralDate, '2000');
  });
}