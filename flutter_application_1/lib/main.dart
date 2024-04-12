import 'package:flutter/material.dart';
import 'home_screen.dart';
// Import other screens here
// import 'species_profiles.dart';
// import 'safety_tips.dart';
// import 'educational_resources.dart';
// import 'emergency_contacts.dart';

void main() {
  runApp(SnakeSavvyApp());
}

class SnakeSavvyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snake Savvy Sri Lanka',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
   
        // '/speciesProfiles': (context) => SpeciesProfilesScreen(),
        // '/safetyTips': (context) => SafetyTipsScreen(),
        // '/educationalResources': (context) => EducationalResourcesScreen(),
        // '/emergencyContacts': (context) => EmergencyContactsScreen(),
       
      },
    );
  }
}
