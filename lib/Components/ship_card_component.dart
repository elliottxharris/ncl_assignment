import 'package:ncl_assignment/Model/ship_model.dart';
import 'package:flutter/material.dart';

class ShipCard extends StatelessWidget {
  const ShipCard({Key? key, required this.ship}) : super(key: key);

  final Ship ship;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 2),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 24,
        child: Card(
          elevation: 30,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          color: Colors.lightBlueAccent,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  ship.name,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  'Capacity: ${ship.capacity}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  'Crew: ${ship.crew}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  'Inaugural Date: ${ship.inauguralDate}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
