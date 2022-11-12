import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_demo/root_scaffold.dart';

import 'data/blocs/pokemon_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonBloc(),
      child: MaterialApp(
        title: 'Pokémon Demo',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const RootScaffold(),
      ),
    );
  }
}
