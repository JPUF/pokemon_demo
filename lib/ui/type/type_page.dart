import 'package:flutter/material.dart';
import 'package:pokemon_demo/data/models/pokemon_type.dart';

class TypePage extends StatelessWidget {
  const TypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: PokemonType.values
              .map((t) => Container(
                    width: 100,
                    alignment: AlignmentDirectional.center,
                    padding: const EdgeInsets.all(4),
                    color: t.color,
                    child: Text(
                      t.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
