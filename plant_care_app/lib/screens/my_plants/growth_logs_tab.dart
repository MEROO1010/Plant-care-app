import 'package:flutter/material.dart';

class GrowthLogsTab extends StatelessWidget {
  final Map<String, dynamic> plant;

  GrowthLogsTab({required this.plant});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> growthLogs = plant['growthLogs'];

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: growthLogs.length,
      itemBuilder: (context, index) {
        final log = growthLogs[index];
        return Card(
          margin: EdgeInsets.only(bottom: 10),
          elevation: 2,
          child: ListTile(
            leading: Icon(Icons.trending_up, color: Colors.green),
            title: Text(log['date']!),
            subtitle: Text(log['description']!),
          ),
        );
      },
    );
  }
}
