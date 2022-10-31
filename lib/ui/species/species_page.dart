import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/models/pokemon_type.dart';

class SpeciesPage extends StatelessWidget {
  const SpeciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              width: 150,
              image: AssetImage('assets/ludicolo.png'),
              fit: BoxFit.fitWidth,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Ludicolo', style: TextStyle(fontSize: 32)),
                const Text('National № 272'),
                const Text('The Carefree Pokémon!'),
                Container(
                  width: 100,
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(4),
                  color: PokemonType.grass.color,
                  child: Text(
                    PokemonType.grass.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 100,
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.all(4),
                  color: PokemonType.water.color,
                  child: Text(
                    PokemonType.water.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
