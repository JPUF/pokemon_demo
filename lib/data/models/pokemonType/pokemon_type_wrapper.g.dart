// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonTypeWrapper _$PokemonTypeWrapperFromJson(Map<String, dynamic> json) =>
    PokemonTypeWrapper(
      name: $enumDecode(_$PokemonTypeEnumMap, json['name']),
    );

Map<String, dynamic> _$PokemonTypeWrapperToJson(PokemonTypeWrapper instance) =>
    <String, dynamic>{
      'name': _$PokemonTypeEnumMap[instance.name]!,
    };

const _$PokemonTypeEnumMap = {
  PokemonType.normal: 'normal',
  PokemonType.fire: 'fire',
  PokemonType.water: 'water',
  PokemonType.electric: 'electric',
  PokemonType.grass: 'grass',
  PokemonType.ice: 'ice',
  PokemonType.fighting: 'fighting',
  PokemonType.poison: 'poison',
  PokemonType.ground: 'ground',
  PokemonType.flying: 'flying',
  PokemonType.psychic: 'psychic',
  PokemonType.bug: 'bug',
  PokemonType.rock: 'rock',
  PokemonType.ghost: 'ghost',
  PokemonType.dragon: 'dragon',
  PokemonType.dark: 'dark',
  PokemonType.steel: 'steel',
  PokemonType.fairy: 'fairy',
};
