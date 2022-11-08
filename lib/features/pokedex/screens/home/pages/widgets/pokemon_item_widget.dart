import 'package:flutter/material.dart';
import 'package:my_poke/features/pokedex/screens/details/container/detail_container.dart';
import 'package:my_poke/features/pokedex/screens/home/pages/widgets/type_widget.dart';
import '../../../../../../common/models/pokemon.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget({Key? key, required this.pokemon, required this.onTap}) : super(key: key);

  final Pokemon pokemon;
  final Function(String, DetailArguments) onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => onTap,
          child: Container(
            decoration: BoxDecoration(
              color: pokemon.baseColor!.withOpacity(0.8),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text(pokemon.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)),
                      Text('#${pokemon.num}', style: TextStyle(color: Colors.black.withOpacity(0.4), fontWeight: FontWeight.bold, fontSize: 14),),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: pokemon.type.map((e) => TypeWidget(name: e)).toList(),
                      ),
                      Flexible(
                          child: Container(
                            height: 100,
                            width: 100,
                          )
                      ),
                      /* Flexible(child: Image.network(pokemon.image)),*/
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 12,
            right: 1,
            child: Image.network(pokemon.image)
        ),
      ],
    );
  }
}
