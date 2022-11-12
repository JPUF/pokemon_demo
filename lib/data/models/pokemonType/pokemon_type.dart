import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';


@JsonEnum(valueField: 'name')
enum PokemonType {
  normal('normal', Colors.grey),
  fire('fire', Colors.red),
  water('water', Colors.blue),
  electric('electric', Colors.yellow),
  grass('grass', Colors.green),
  ice('ice', Colors.lightBlueAccent),
  fighting('fighting', Color.fromRGBO(112, 22, 4, 1)),
  poison('poison', Colors.purple),
  ground('ground', Colors.amber),
  flying('flying', Color.fromRGBO(61, 81, 218, 1)),
  psychic('psychic', Colors.pink),
  bug('bug', Colors.lightGreenAccent),
  rock('rock', Color.fromRGBO(227, 183, 126, 1)),
  ghost('ghost', Colors.deepPurple),
  dragon('dragon', Color.fromRGBO(95, 0, 229, 1)),
  dark('dark', Colors.brown),
  steel('steel', Color.fromRGBO(163, 163, 163, 1)),
  fairy('fairy', Colors.pinkAccent),
  ;

  final String name;
  final Color color;

  const PokemonType(this.name, this.color);
}