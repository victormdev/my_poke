import 'package:flutter/material.dart';
import 'package:my_poke/common/repositories/pokemon_repository.dart';
import 'package:my_poke/features/pokedex/screens/home/pages/home_error.dart';
import 'package:my_poke/features/pokedex/screens/home/pages/home_loading.dart';
import 'package:my_poke/features/pokedex/screens/home/pages/homepage.dart';
import '/../../common/error/failure.dart';
import '/../../common/models/pokemon.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key, required this.repository}) : super(key: key);
  final IPokemonRepository repository;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: repository.getAllPokemons(),
        builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return HomeLoading();
      }

      if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
        return HomePage(list: snapshot.data!);
      }

      if(snapshot.hasError){
        return HomeError(
            error: (snapshot.error as Failure).message!
        );
      }

      return Container();
    });
  }
}
