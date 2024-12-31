import 'package:flutter/material.dart';

class CareSchedulesTab extends StatelessWidget {
  final Map<String, dynamic> plant;

  CareSchedulesTab({required this.plant});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> careSchedules = plant['careSchedules'];

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: careSchedules.length,
      itemBuilder: (context, index) {
        final schedule = careSchedules[index];
        return Card(
          margin: EdgeInsets.only(bottom: 10),
          elevation: 2,
          child: ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.green),
            title: Text(schedule['task']!),
            subtitle: Text(schedule['time']!),
          ),
        );
      },
    );
  }
}
