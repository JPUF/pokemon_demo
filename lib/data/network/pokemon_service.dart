import '../models/pokemon/pokemon.dart';
import 'api.dart';

// Instead of manual Singletons, use Dependency Injection! get_it
// https://blog.logrocket.com/dependency-injection-flutter-using-getit-injectable/
class PokemonService {
  static PokemonService? _internalInstance;

  factory PokemonService() => _internalInstance ??= PokemonService._();

  PokemonService._();

  Future<Pokemon> getPokemon(int pokemonNumber) async {
    var response = await Api().dio.get('pokemon/$pokemonNumber');

    return Pokemon.fromJson(response.data);
  }
}