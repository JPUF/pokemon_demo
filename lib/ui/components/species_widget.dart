import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/models/pokemon.dart';

import '../../data/models/pokemon_type.dart';
import 'pokemon_type_box.dart';

class SpeciesWidget extends StatelessWidget {
  const SpeciesWidget({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          width: 150,
          image: AssetImage('assets/ludicolo.png'),
          fit: BoxFit.fitWidth,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pokemon.name, style: const TextStyle(fontSize: 32)),
            Text('National № ${pokemon.number}'),
            _typeColumn(pokemon.types),
          ],
        )
      ],
    );
  }

  Column _typeColumn(List<PokemonType> types) {
    return Column(
      children: types.map((t) => PokemonTypeBox(type: t)).toList(),
    );
  }
}
