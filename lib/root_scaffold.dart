import 'package:flutter/material.dart';
import 'package:pokemon_demo/extensions.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          actions: _appBarActions(constraints.isMobile),
          title: Visibility(
            visible: constraints.isMobile,
            child: Text(_pageMap.keys.elementAt(_selectedIndex)),
          ),
        ),
        body: Center(
          child: _pageMap.values.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: _bottomNavigationBar(constraints.isDesktop),
      );
    });
  }

  List<TextButton>? _appBarActions(bool hideActions) {
    // Generates list: [0, 1, 2, ... , # of pages]
    final indexRange = Iterable<int>.generate(_pageMap.keys.length).toList();

    return hideActions
        ? null
        : indexRange.map((index) => _appBarButton(index)).toList();
  }

  TextButton _appBarButton(int i) {
    return TextButton(
      onPressed: () => _onItemTapped(i),
      child: Text(
        _pageMap.keys.elementAt(i),
        style: TextStyle(
          color: Colors.white,
          fontWeight: _selectedIndex == i ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  BottomNavigationBar? _bottomNavigationBar(bool hideBottomNav) {
    return hideBottomNav
        ? null
        : BottomNavigationBar(
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
          );
  }
}
