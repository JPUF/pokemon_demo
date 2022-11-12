import 'package:json_annotation/json_annotation.dart';

import 'pokemon_type_wrapper.dart';

part 'pokemon_type_slot.g.dart';

@JsonSerializable()
class PokemonTypeSlot {
  final PokemonTypeWrapper type;

  PokemonTypeSlot({
    required this.type,
  });

  factory PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypeSlotToJson(this);
}
