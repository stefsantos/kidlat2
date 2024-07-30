import 'package:flutter/material.dart';

class ProfilePage2 extends StatefulWidget {
  @override
  _ProfilePage2State createState() => _ProfilePage2State();
}

class _ProfilePage2State extends State<ProfilePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page 2'),
      ),
      body: Center(
        child: Text('This is Profile Page 2'),
      ),
    );
  }
}

