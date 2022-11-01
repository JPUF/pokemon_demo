import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/models/pokemon_type.dart';

import '../components/pokemon_type_box.dart';

class TypePage extends StatelessWidget {
  const TypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int randomTypeIndex = Random().nextInt(PokemonType.values.length);
    final PokemonType randomType = PokemonType.values[randomTypeIndex];
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text('${randomType.name} is the best type!'),
              const PokemonTypesColumn(),
            ],
          ),
        ),
      ),
    );
  }
}

class PokemonTypesColumn extends StatelessWidget {
  const PokemonTypesColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: PokemonType.values.map((t) => PokemonTypeBox(type: t)).toList(),
    );
  }
}
