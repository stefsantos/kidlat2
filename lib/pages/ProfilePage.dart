import 'package:flutter/material.dart';
import 'package:kidlat/pages/start_page.dart'; // Ensure this is the correct path

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _logout(BuildContext context) {
    // Perform any necessary logout operations here (e.g., clearing session data)
    
    // Navigate to the start page
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => StartPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _logout(context),
          child: Text("Logout"),
        ),
      ),
    );
  }
}
