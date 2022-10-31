import 'package:flutter/material.dart';
import 'package:pokemon_demo/root_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon Demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const RootScaffold(),
    );
  }
}
