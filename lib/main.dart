import 'package:flutter/material.dart';
import 'package:ncl_assignment/ViewModel/ships_model.dart';
import 'package:ncl_assignment/Views/ships_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShipsModel(),
      child: MaterialApp(
          title: 'Ships',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(12),
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
              ),
            ),
          ),
          home: const ShipsView()),
    );
  }
}
