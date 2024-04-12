import 'package:flutter/material.dart';

class EmergencyContactScreen extends StatelessWidget {
  
  final Map<String, String> emergencyContacts = {
    'Sri Lankan Police Emergency': '119',
    'Emergency Suwaseriya Ambulence Service': '1990',
    'Wildlife Conservation Department': '1992',
    'National Hospital of Sri Lanka': '+94 112 691 111',
   
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contacts'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Emergency Contacts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'If you are bitten by a snake or are in areas where there are a lot of snakes, use the following emergency numbers to get advice quickly:',
            ),
            SizedBox(height: 20),
            ...emergencyContacts.entries.map(
              (entry) => ListTile(
                title: Text(entry.key),
                subtitle: Text(entry.value),
                trailing: Icon(Icons.phone),
                onTap: () {
               
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}
