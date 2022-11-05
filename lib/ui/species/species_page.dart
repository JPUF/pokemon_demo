import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_demo/data/repositories/pokemon_repository.dart';

import '../../data/blocs/pokemon_bloc.dart';
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
                  BlocProvider.of<PokemonBloc>(context).add(GetRandomPokemon());
                },
                child: const Text('Randomise!'),
              ),
              BlocBuilder<PokemonBloc, PokemonState>(
                builder: (context, state) {
                  return SpeciesWidget(
                    pokemon:
                        state.pokemon ?? PokemonRepository.pokemonList.first,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
