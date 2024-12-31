import 'package:flutter/material.dart';
import 'overview_section.dart'; // Import the Overview widget
import 'featured_plants.dart'; // Import the Featured Plants widget
import 'notifications.dart'; // Import the Notifications widget

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example data for featured plants
    final List<Map<String, String>> featuredPlants = [
      {'name': 'Aloe Vera', 'image': 'assets/plant_1.jpg'},
      {'name': 'Snake Plant', 'image': 'assets/plant_2.jpg'},
      {'name': 'Spider Plant', 'image': 'assets/plant_3.jpg'},
      {'name': 'Peace Lily', 'image': 'assets/plant_4.jpg'},
      {'name': 'Cactus', 'image': 'assets/plant_5.jpg'},
    ];

    // Example data for notifications
    final List<Map<String, String>> notifications = [
      {
        'title': 'Water your Aloe Vera',
        'subtitle': 'Reminder: 10:00 AM, Jan 1',
      },
      {
        'title': 'Fertilize Snake Plant',
        'subtitle': 'Reminder: 8:00 AM, Jan 3',
      },
      {'title': 'Prune Peace Lily', 'subtitle': 'Reminder: 4:00 PM, Jan 5'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Care App'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Overview Section
              OverviewSection(
                title: 'Plant Care Overview',
                description:
                    'Keep track of your plant\'s health and receive personalized care tips.',
                icon: Icons.eco,
                backgroundColor: Colors.green,
              ),
              SizedBox(height: 20),

              // Featured Plants Section
              FeaturedPlants(plants: featuredPlants),
              SizedBox(height: 20),

              // Notifications Section
              Notifications(notifications: notifications),
            ],
          ),
        ),
      ),
    );
  }
}
