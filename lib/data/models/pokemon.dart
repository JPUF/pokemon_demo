import 'pokemon_type.dart';

class Pokemon {
  final String name;
  final List<PokemonType> types;
  final int number;

  const Pokemon(this.name, this.types, this.number);
}
