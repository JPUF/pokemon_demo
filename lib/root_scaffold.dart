import 'package:flutter/material.dart';

import 'ui/home/home_page.dart';
import 'ui/species/species_page.dart';
import 'ui/type/type_page.dart';

class RootScaffold extends StatefulWidget {
  const RootScaffold({super.key});

  @override
  State<RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<RootScaffold> {
  int _selectedIndex = 0;
  static const Map<String, Widget> _pageMap = {
    'Pokémon Home': HomePage(),
    'Pokémon Types': TypePage(),
    'Pokémon Species': SpeciesPage()
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageMap.keys.elementAt(_selectedIndex)),
      ),
      body: Center(
        child: _pageMap.values.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: 'Types',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Species',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
