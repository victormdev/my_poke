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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Pokedex',
            style: TextStyle(
                color: Colors.black,
                    fontSize: 24,
            ),),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("vmadevops@gmail.com"),
              accountName: Text("Victor Macedo"),
              currentAccountPicture: CircleAvatar(
                child: Text("VM"),
              ),

            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favoritos"),
                onTap: () {
                  Navigator.pop(context);
                  //Navegar para outra página
                },
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: list.map((e) => PokemonItemWidget(pokemon: e, onTap: onItemTap,)).toList()
        ),
      ),
    );
  }
}