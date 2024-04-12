import 'package:flutter/material.dart';

class EducationResourcesScreen extends StatelessWidget {
  // Example resource data. Replace these with actual data.
  final Map<String, List<String>> resources = {
    'Web Pages': [
      'www.snakeconservation.org',
      'www.herpetology.com',
    ],
    'Facebook Pages': [
      'Sri Lanka Wildlife Conservation Society',
      'Herpetology Enthusiasts',
    ],
    'Books': [
      'Snakes of Sri Lanka: A Coloured Atlas',
      'Reptiles and Amphibians of Sri Lanka',
    ],
    'Magazines': [
      'Reptile Magazine',
      'Herpetology Today',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Resources of Sri Lankan Snakes'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Educational Resources of Sri Lankan Snakes',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Learning about snakes is crucial for conservation efforts and ensuring safe interactions between humans and snakes. Explore the following resources to enhance your understanding of snake ecology:',
            ),
            SizedBox(height: 20),
            ...resources.keys.map((key) => _buildResourceSection(key, resources[key]!)),
          ],
        ),
      ),
    );
  }

  Widget _buildResourceSection(String resourceType, List<String> resourceList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          resourceType,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        ...resourceList.map((resource) => ListTile(
              title: Text(resource),
              leading: Icon(Icons.bookmark_outline),
            )),
        SizedBox(height: 10), // Spacing between sections
      ],
    );
  }
}
