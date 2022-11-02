import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/repositories/pokemon_repository.dart';

import '../components/species_widget.dart';

class SpeciesPage extends StatelessWidget {
  const SpeciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextButton(onPressed: () {}, child: const Text('Random Pokémon')),
              SpeciesWidget(pokemon: PokemonRepository.pokemonList.first),
            ],
          ),
        ),
      ),
    );
  }
}
