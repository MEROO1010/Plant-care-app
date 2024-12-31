import 'package:flutter/material.dart';
import 'package:plant_care_app/screens/my_plants/care_schedules_tab.dart';
import 'package:plant_care_app/screens/my_plants/growth_logs_tab.dart';
import 'package:plant_care_app/screens/my_plants/profile_info_tab.dart';

class PlantDetailPage extends StatelessWidget {
  final Map<String, dynamic> plant;

  PlantDetailPage({required this.plant});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(plant['name']),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Profile Info'),
              Tab(text: 'Care Schedules'),
              Tab(text: 'Growth Logs'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Profile Info Tab
            ProfileInfoTab(plant: plant),
            // Care Schedules Tab
            CareSchedulesTab(plant: plant),
            // Growth Logs Tab
            GrowthLogsTab(plant: plant),
          ],
        ),
      ),
    );
  }
}
