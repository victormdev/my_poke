import 'package:flutter/material.dart';

import '../../features/pokedex/screens/home/pages/homepage.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Favoritos',
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
            const UserAccountsDrawerHeader(
              accountEmail: Text("vmadevops@gmail.com"),
              accountName: Text("Victor Macedo"),
              currentAccountPicture: CircleAvatar(
                child: Text("VM"),
              ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritePage()),
                );
              },
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
        ),
      ),
    );
  }
}