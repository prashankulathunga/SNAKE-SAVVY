import 'package:flutter/material.dart';

class SafetyTipsScreen extends StatelessWidget {
 
  final List<String> nonVenomousTips = [
    'Stay calm and do not panic',
    'Do not try to touch or capture the snake',
    'Observe the snake from a safe distance',
  ];

  final List<String> venomousTips = [
    'Keep a safe distance away',
    'Alert others around you',
    'Contact local wildlife services',
  ];

  final List<String> highlyVenomousTips = [
    'Do not attempt to handle the snake',
    'Call emergency services immediately',
    'Keep the affected person calm and immobile if bitten',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safety Tips'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General Safety Tips',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Always be aware of your surroundings and watch where you step or place your hands. If you encounter a snake, follow these guidelines:',
            ),
            SizedBox(height: 20),
            _buildSafetyTipsSection('Non-Venomous Snakes', nonVenomousTips),
            SizedBox(height: 20),
            _buildSafetyTipsSection('Venomous Snakes', venomousTips),
            SizedBox(height: 20),
            _buildSafetyTipsSection('Highly Venomous Snakes', highlyVenomousTips),
          ],
        ),
      ),
    );
  }

  Widget _buildSafetyTipsSection(String title, List<String> tips) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        ...tips.map((tip) => ListTile(
              title: Text(tip),
              leading: Icon(Icons.check_circle_outline),
            )),
      ],
    );
  }
}
