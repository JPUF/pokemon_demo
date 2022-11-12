import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon_demo/data/models/pokemonType/pokemon_type_slot.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  final String name;

  final List<PokemonTypeSlot> types;
  final int id;

  Pokemon({
    required this.name,
    required this.types,
    required this.id,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}
