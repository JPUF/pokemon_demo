part of 'pokemon_bloc.dart';

@immutable
abstract class PokemonState {
  const PokemonState();
}

class InitialPokemonState extends PokemonState {}

class LoadingPokemonState extends PokemonState {}

class PopulatedPokemonState extends PokemonState {
  final Pokemon pokemon;

  const PopulatedPokemonState(this.pokemon);
}
