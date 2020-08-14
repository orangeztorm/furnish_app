import 'package:flutter/material.dart';
import 'package:furnish_app/get_hexcolor.dart';
import 'package:furnish_app/screens/timer_Screen.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{



  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    TimerScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event_seat),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
              title: Text('Timer')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
              title: Text('Cart')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
              title: Text('Person')
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(getHexColorFromString('#FDD148')),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
