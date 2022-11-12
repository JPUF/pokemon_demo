import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon_demo/data/models/pokemonType/pokemon_type_slot.dart';

import '../artwork/sprites.dart';

part 'pokemon.g.dart';

@JsonSerializable(explicitToJson: true)
class Pokemon {
  final String name;

  final List<PokemonTypeSlot> types;
  final int id;

  final Sprites sprites;

  Pokemon({
    required this.name,
    required this.types,
    required this.id,
    required this.sprites,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}
