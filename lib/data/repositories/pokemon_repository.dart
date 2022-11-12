import 'package:pokemon_demo/data/models/pokemon_type.dart';

import '../models/pokemon.dart';

class PokemonRepository {
  static List<Pokemon> pokemonList = [
    Pokemon(name: 'Ludicolo', types: [PokemonType.grass, PokemonType.water], number: 272),
    Pokemon(name: 'Gengar', types: [PokemonType.ghost, PokemonType.poison], number: 94),
    Pokemon(name:'Eevee', types: [PokemonType.normal], number: 133),
  ];
}
