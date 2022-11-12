import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/pokemon/pokemon.dart';
import '../repositories/pokemon_repository.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(InitialPokemonState()) {
    on<GetRandomPokemon>(_getRandomPokemon);
  }

  final _pokemonRepository = PokemonRepository();

  Future<void> _getRandomPokemon(
    GetRandomPokemon event,
    Emitter<PokemonState> emit,
  ) async {
    final networkResult = await _pokemonRepository.getRandomPokemon();
    emit(PopulatedPokemonState(networkResult));
  }
}
