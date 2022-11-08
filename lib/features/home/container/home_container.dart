import 'package:flutter/material.dart';
import 'package:my_poke/features/home/pages/home_error.dart';
import 'package:my_poke/features/home/pages/home_loading.dart';
import 'package:my_poke/features/home/pages/homepage.dart';
import '../../../common/models/pokemon.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: ,
        builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return HomeLoading();
      }

      if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
        return HomePage(list: snapshot.data!);
      }

      if(snapshot.hasError){
        return HomeError(error: snapshot.error.toString());
      }

      return Container();
    });
  }
}
