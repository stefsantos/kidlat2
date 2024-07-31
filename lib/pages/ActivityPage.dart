import 'package:flutter/material.dart';
import '../selected_markers.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final SelectedMarkersManager _selectedMarkersManager = SelectedMarkersManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _selectedMarkersManager.selectedMarkers.isEmpty
          ? Center(
              child: Text(
                'No Activity',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: _selectedMarkersManager.selectedMarkers.length,
              itemBuilder: (context, index) {
                final marker = _selectedMarkersManager.selectedMarkers[index];
                return ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  leading: Image.network(
                    marker.imageUrl,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(marker.name),
                  subtitle: Text('Location: ${marker.location.latitude}, ${marker.location.longitude}'),
                );
              },
            ),
    );
  }
}
