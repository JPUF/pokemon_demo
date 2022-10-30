import 'package:flutter/material.dart';

enum Type {
  normal('Normal', Colors.grey),
  fire('Fire', Colors.red),
  water('Water', Colors.blue),
  electric('Electric', Colors.yellow),
  grass('Grass', Colors.green),
  ice('Ice', Colors.lightBlueAccent),
  fighting('Fighting', Color.fromRGBO(112, 22, 4, 1)),
  poison('Poison', Colors.purple),
  ground('Ground', Colors.amber),
  flying('Flying', Color.fromRGBO(61, 81, 218, 1)),
  psychic('Psychic', Colors.pink),
  bug('Bug', Colors.lightGreenAccent),
  rock('Rock', Color.fromRGBO(227, 183, 126, 1)),
  ghost('Ghost', Colors.deepPurple),
  dragon('Dragon', Color.fromRGBO(95, 0, 229, 1)),
  dark('Dark', Colors.brown),
  steel('Steel', Color.fromRGBO(163, 163, 163, 1)),
  fairy('Fairy', Colors.pinkAccent),
  ;

  final String name;
  final Color color;

  const Type(this.name, this.color);
}