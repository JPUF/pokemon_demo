import 'package:flutter/material.dart';
import 'package:pokemon_demo/pages/type/type_page.dart';

import 'pages/home/home_page.dart';

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
    'Pokémon Other': Text('Third page')
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
            icon: Icon(Icons.add),
            label: 'Other',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
