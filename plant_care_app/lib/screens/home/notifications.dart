import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  final List<Map<String, String>> notifications;

  Notifications({required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notifications',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          children:
              notifications.map((notification) {
                return Card(
                  margin: EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications_active,
                      color: Colors.green,
                    ),
                    title: Text(notification['title']!),
                    subtitle: Text(notification['subtitle']!),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Add navigation or other functionality here
                      print('Tapped on ${notification['title']}');
                    },
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
