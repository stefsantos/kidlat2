import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget {
  final VoidCallback onBack;

  ProfilePage2({required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page 2"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
      ),
      body: Center(
        child: Text("Welcome to Profile Page 2"),
      ),
    );
  }
}
