import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/models/pokemon_type.dart';
import 'package:pokemon_demo/ui/components/pokemon_type_box.dart';

class SpeciesPage extends StatelessWidget {
  const SpeciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              width: 150,
              image: AssetImage('assets/ludicolo.png'),
              fit: BoxFit.fitWidth,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  const [
                Text('Ludicolo', style: TextStyle(fontSize: 32)),
                Text('National № 272'),
                Text('The Carefree Pokémon!'),
                PokemonTypeBox(type: PokemonType.grass),
                PokemonTypeBox(type: PokemonType.water),
              ],
            )
          ],
        ),
      ),
    );
  }
}
