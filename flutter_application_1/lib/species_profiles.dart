import 'package:flutter/material.dart';


class Snake {
  final String name;
  final String description;
  final String imageUrl;

  Snake(this.name, this.description, this.imageUrl);
}

class SpeciesProfilesScreen extends StatelessWidget {
  
  final List<Snake> snakes = [
    Snake("Cobra", "Description of Cobra", "assets/images/cobra.png"),
    Snake("Viper", "Description of Viper", "assets/images/viper.png"),
    Snake("Python", "Description of Python", "assets/images/python.png"),
    Snake("Anaconda", "Description of Anaconda", "assets/images/anaconda.png"),
    Snake("Rattlesnake", "Description of Rattlesnake", "assets/images/rattlesnake.png"),
    Snake("Mamba", "Description of Mamba", "assets/images/mamba.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Species Profiles'),
      ),
      body: ListView.builder(
        itemCount: snakes.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(snakes[index].imageUrl, width: 100, height: 100, fit: BoxFit.cover),
                  title: Text(snakes[index].name),
                  subtitle: Text(snakes[index].description),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
