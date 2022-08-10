import 'package:ncl_assignment/Model/ship_type_model.dart';
import 'package:test/test.dart';
import 'package:ncl_assignment/ViewModel/ships_model.dart';

void main() {
  test('test ship provider', () async{
    ShipsModel model = ShipsModel();

    await model.selectShip(ShipType.sky);

    expect(model.ship?.name, 'Norwegian Sky');
  });
}