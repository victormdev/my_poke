import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_poke/common/consts/api_consts.dart';
import 'package:my_poke/common/models/pokemon.dart';

abstract class IPokemonRepository{
  Future<List<Pokemon>> getAllPokemons();
}

class PokemonRepository implements IPokemonRepository{
  final Dio dio;

  PokemonRepository({required this.dio});
  @override
  Future<List<Pokemon>> getAllPokemons() async {
    try {
      final response = await dio.get(ApiConsts.allPokemonsURL);
      final json = jsonDecode(response.data) as Map<String, dynamic>;
      final list = json['pokemon'] as List<Map<String, dynamic>>;
      list.map((e) => null)
    } catch(e){

    }
  }
}