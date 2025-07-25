import 'package:flutter_try_feature_list/features/02_future_stream/002_dio/domain/pokemon.dart';

abstract class PokemonRepository {
  Future<Pokemon> getPokemon();
  Future<Pokemon> getEvlovePokemon(int id);
}
