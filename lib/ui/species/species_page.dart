import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/repositories/pokemon_repository.dart';

import '../../data/models/pokemon.dart';
import '../components/species_widget.dart';

class SpeciesPage extends StatefulWidget {
  const SpeciesPage({Key? key}) : super(key: key);

  @override
  State<SpeciesPage> createState() => _SpeciesPageState();
}

class _SpeciesPageState extends State<SpeciesPage> {
  Pokemon _pokemon = PokemonRepository.pokemonList.first;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final randomIndex = Random().nextInt(PokemonRepository.pokemonList.length);
                  final randomNewPokemon = PokemonRepository.pokemonList[randomIndex];
                  setState(() {
                    _pokemon = randomNewPokemon;
                  });
                },
                child: const Text('Randomise!'),
              ),
              SpeciesWidget(pokemon: _pokemon),
            ],
          ),
        ),
      ),
    );
  }
}
