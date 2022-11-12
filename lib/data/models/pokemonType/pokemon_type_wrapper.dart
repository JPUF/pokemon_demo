import 'package:json_annotation/json_annotation.dart';

import 'pokemon_type.dart';


part 'pokemon_type_wrapper.g.dart';

@JsonSerializable()
class PokemonTypeWrapper {

  final PokemonType name;

  PokemonTypeWrapper({
    required this.name,
  });

  factory PokemonTypeWrapper.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypeWrapperToJson(this);
}