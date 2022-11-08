import 'package:flutter/material.dart';

import '../../../../../common/error/failure.dart';
import '../../../../../common/models/pokemon.dart';
import '../../../../../common/repositories/pokemon_repository.dart';
import '../../home/pages/home_error.dart';
import '../../home/pages/home_loading.dart';
import '../../home/pages/homepage.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({Key? key, required this.repository}) : super(key: key);
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
