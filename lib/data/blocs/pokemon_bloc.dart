import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/pokemon.dart';
import '../repositories/pokemon_repository.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(const PokemonState.initial()) {
    on<GetRandomPokemon>(_getRandomPokemon);
  }

  void _getRandomPokemon(
    GetRandomPokemon event,
    Emitter<PokemonState> emit,
  ) {
    final randomIndex = Random().nextInt(PokemonRepository.pokemonList.length);
    final randomNewPokemon = PokemonRepository.pokemonList[randomIndex];
    emit(PokemonState(randomNewPokemon));
  }
}
