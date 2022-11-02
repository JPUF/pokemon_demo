import 'package:pokemon_demo/data/models/pokemon_type.dart';

import '../models/pokemon.dart';

class PokemonRepository {
  static const List<Pokemon> pokemonList = [
    Pokemon('Ludicolo', [PokemonType.grass, PokemonType.water], 272),
    Pokemon('Gengar', [PokemonType.ghost, PokemonType.poison], 94),
    Pokemon('Darmanitan', [PokemonType.fire], 555),
  ];
}
