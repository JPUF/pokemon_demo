import 'package:pokemon_demo/data/models/pokemonType/pokemon_type.dart';
import 'package:pokemon_demo/data/models/pokemonType/pokemon_type_slot.dart';
import 'package:pokemon_demo/data/models/pokemonType/pokemon_type_wrapper.dart';

import '../models/pokemon/pokemon.dart';
import 'dart:math';


import '../network/pokemon_service.dart';

class PokemonRepository {
  static List<Pokemon> pokemonList = [
    Pokemon(
      name: 'Ludicolo',
      types: [
        PokemonTypeSlot(type: PokemonTypeWrapper(name: PokemonType.grass)),
        PokemonTypeSlot(type: PokemonTypeWrapper(name: PokemonType.water)),
      ],
      id: 272,
    ),
    Pokemon(
      name: 'Gengar',
      types: [
        PokemonTypeSlot(type: PokemonTypeWrapper(name: PokemonType.ghost)),
        PokemonTypeSlot(type: PokemonTypeWrapper(name: PokemonType.poison)),
      ],
      id: 94,
    ),
    Pokemon(
      name: 'Eevee',
      types: [
        PokemonTypeSlot(type: PokemonTypeWrapper(name: PokemonType.normal)),
      ],
      id: 133,
    ),
  ];

  final PokemonService _service = PokemonService();

  Future<Pokemon> getRandomPokemon() async {
    final randomPokemonNumber = 1 + Random().nextInt(905);
    return _service.getPokemon(randomPokemonNumber);
  }
}
