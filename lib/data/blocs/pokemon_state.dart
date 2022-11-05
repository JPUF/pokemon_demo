part of 'pokemon_bloc.dart';

@immutable
class PokemonState {
  final Pokemon? pokemon;

  const PokemonState.initial() : pokemon = null;

  const PokemonState(this.pokemon);
}
