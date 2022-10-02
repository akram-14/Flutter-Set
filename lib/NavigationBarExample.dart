import 'package:flutter/material.dart';

class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({Key? key}) : super(key: key);

  @override
  State<NavigationBarExample> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarExample> {
  int selectedIndex = 0;

  void onItemTapped( int index){
    setState(() {
      selectedIndex= index;
    });
  }

  List<Widget> widgetScreen = <Widget>[
    Text('Home Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body:Center(
        child: widgetScreen.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        elevation: 5,
        onTap: onItemTapped,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          backgroundColor: Colors.green,
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
            backgroundColor: Colors.yellow,
            label: "Search",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
            backgroundColor: Colors.green,
            label: "Profile",
          ),

        ],
      ),
    );
  }
}
