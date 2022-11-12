import 'dart:math';

import 'package:pokemon_demo/data/models/pokemonType/pokemon_type.dart';
import 'package:pokemon_demo/data/models/pokemonType/pokemon_type_slot.dart';
import 'package:pokemon_demo/data/models/pokemonType/pokemon_type_wrapper.dart';

import '../models/pokemon/pokemon.dart';
import '../network/pokemon_service.dart';

class PokemonRepository {
  static Pokemon defaultPokemon = Pokemon(
    name: 'Ludicolo',
    types: [
      PokemonTypeSlot(type: PokemonTypeWrapper(name: PokemonType.grass)),
      PokemonTypeSlot(type: PokemonTypeWrapper(name: PokemonType.water)),
    ],
    id: 272,
  );

  final PokemonService _service = PokemonService();

  Future<Pokemon> getRandomPokemon() async {
    final randomPokemonNumber = 1 + Random().nextInt(905);
    return _service.getPokemon(randomPokemonNumber);
  }
}
