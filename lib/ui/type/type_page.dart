import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/models/pokemon_type.dart';

import '../components/pokemon_type_box.dart';

class TypePage extends StatelessWidget {
  const TypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children:
              PokemonType.values.map((t) => PokemonTypeBox(type: t)).toList(),
        ),
      ),
    );
  }
}
