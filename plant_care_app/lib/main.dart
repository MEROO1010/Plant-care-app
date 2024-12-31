import 'package:flutter/material.dart';
import 'package:plant_care_app/screens/my_plants/plant_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // Example plant data
  final List<Map<String, String>> plants = [
    {
      'name': 'Aloe Vera',
      'description': 'A succulent plant species of the genus Aloe.',
      'image': 'assets/plant_1.jpg',
    },
    {
      'name': 'Snake Plant',
      'description': 'One of the easiest indoor plants to care for.',
      'image': 'assets/plant_2.jpg',
    },
    {
      'name': 'Spider Plant',
      'description': 'A hardy indoor plant with long, spiky leaves.',
      'image': 'assets/plant_3.jpg',
    },
    {
      'name': 'Peace Lily',
      'description': 'Known for its white flowers and air-purifying qualities.',
      'image': 'assets/plant_4.jpg',
    },
    {
      'name': 'Cactus',
      'description': 'A low-maintenance plant perfect for arid environments.',
      'image': 'assets/plant_5.jpg',
    },
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlantListView(plants: plants),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MyPlantsScreen(),
    CareRemindersScreen(),
    ExploreScreen(),
    CommunityScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plant Care App')),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'My Plants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Care Reminders',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Community'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              title: Text('Identify Plant'),
              onTap: () {
                // Navigate to Identify Plant
              },
            ),
            ListTile(
              title: Text('Tools'),
              onTap: () {
                // Navigate to Tools
              },
            ),
            ListTile(
              title: Text('Shop'),
              onTap: () {
                // Navigate to Shop
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class MyPlantsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('My Plants Screen'));
  }
}

class CareRemindersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Care Reminders Screen'));
  }
}

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Explore Screen'));
  }
}

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Community Screen'));
  }
}
