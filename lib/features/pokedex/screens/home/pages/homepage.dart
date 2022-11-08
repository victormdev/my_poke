import 'package:flutter/material.dart';
import 'package:my_poke/features/pokedex/screens/details/container/detail_container.dart';
import 'package:my_poke/features/pokedex/screens/home/pages/widgets/pokemon_item_widget.dart';

import '/../../common/models/pokemon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.list, required this.onItemTap}) : super (key: key);
  final List<Pokemon> list;
  final Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: list.map((e) => PokemonItemWidget(pokemon: e)).toList()
        ),
      ),
    );
  }
}