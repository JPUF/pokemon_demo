import 'package:flutter/material.dart';

import '../../data/models/pokemonType/pokemon_type.dart';

class PokemonTypeBox extends StatelessWidget {
  const PokemonTypeBox({
    super.key,
    required this.type,
  });

  final PokemonType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.all(4),
      color: type.color,
      child: Text(
        type.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
