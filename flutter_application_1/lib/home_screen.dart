import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Image.asset(
              'assets/images/snake_logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Text('Snake Savvy Sri Lanka'),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Discover and learn about the diverse species of snakes found in Sri Lanka. Stay safe by following best practices and connect with specialists in case of an emergency.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/speciesProfiles'),
              child: Text('Species Profiles'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/safetyTips'),
              child: Text('Safety Tips'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/educationalResources'),
              child: Text('Educational Resources'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/emergencyContacts'),
              child: Text('Emergency Contacts'),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
