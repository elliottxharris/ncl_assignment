import 'package:flutter/material.dart';
import 'package:ncl_assignment/Components/ship_card_component.dart';
import 'package:ncl_assignment/Model/ship_type_model.dart';
import 'package:ncl_assignment/ViewModel/ships_model.dart';
import 'package:provider/provider.dart';

class ShipsView extends StatelessWidget {
  const ShipsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ships'),
        elevation: 6,
      ),
      body: Consumer<ShipsModel>(
        builder: ((context, model, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () async {
                            await model.selectShip(ShipType.sky);
                          },
                          child: const Text('Sky'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () async {
                            await model.selectShip(ShipType.bliss);
                          },
                          child: const Text('Bliss'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () async {
                            await model.selectShip(ShipType.escape);
                          },
                          child: const Text('Escape'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: model.loading,
                child: const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: CircularProgressIndicator(),
                ),
              ),
              const Spacer(),
              if (model.ship != null)
                Visibility(
                  visible: !model.loading,
                  child: ShipCard(
                    ship: model.ship!,
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }
}
