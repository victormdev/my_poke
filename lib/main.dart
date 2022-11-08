import 'package:flutter/material.dart';
import 'package:my_poke/common/repositories/pokemon_repository.dart';
import 'package:dio/dio.dart';
import 'package:my_poke/features/pokedex/route.dart';
import 'features/pokedex/screens/home/container/home_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPoke',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokedexRoute(
        repository: PokemonRepository(dio: Dio()),),
      /* HomeContainer(
        repository: PokemonRepository(dio: Dio(),
        ),
      ),*/
    );
  }
}