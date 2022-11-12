import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/models/pokemon/pokemon.dart';
import 'package:pokemon_demo/data/models/pokemonType/pokemon_type_slot.dart';

import 'pokemon_type_box.dart';

class SpeciesWidget extends StatelessWidget {
  const SpeciesWidget({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          pokemon.sprites.frontDefault,
          width: 150,
          fit: BoxFit.fill,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return const CircularProgressIndicator();
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pokemon.name, style: const TextStyle(fontSize: 32)),
            Text('National № ${pokemon.id}'),
            _typeColumn(pokemon.types),
          ],
        )
      ],
    );
  }

  Column _typeColumn(List<PokemonTypeSlot> types) {
    return Column(
      children: types.map((t) => PokemonTypeBox(type: t.type.name)).toList(),
    );
  }
}
