import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'markers.dart'; // Import the markers file
import 'pages/FavoritesPage.dart';
import 'pages/ActivityPage.dart';
import 'pages/ProfilePage.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng destination =
      LatLng(14.536189958708459, 120.98191704232873);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;
  Location location = Location();
  LatLng? selectedMarker;

  TextEditingController searchController = TextEditingController();
  List<ChargerMarker> searchResults = [];

  int _selectedIndex = 0; // Track the selected index

  void getCurrentLocation() async {
    location.getLocation().then(
      (location) {
        currentLocation = location;
        updateCurrentLocationMarker();
      },
    );

    location.onLocationChanged.listen((newLocation) {
      setState(() {
        currentLocation = newLocation;
        updateCurrentLocationMarker();
      });
    });
  }

  void updateCurrentLocationMarker() {
    if (currentLocation != null) {
      setState(() {});
    }
  }

  void getPolyPoints(LatLng source, LatLng destination) async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "YOUR_GOOGLE_MAPS_API_KEY",
      PointLatLng(source.latitude, source.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );

    if (result.points.isNotEmpty) {
      polylineCoordinates.clear();
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {
        selectedMarker = null; // Hide the button after generating the polyline
      });
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  void showBottomSheet(LatLng marker, ChargerMarker charger) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 0.6,
          minChildSize: 0.2,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  ListTile(
                    title: Text(charger.name),
                    subtitle: Text(
                        'Location: ${charger.location.latitude}, ${charger.location.longitude}'),
                  ),
                  const SizedBox(height: 10),
                  Image.network(
                    charger.imageUrl,
                    height: 150,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      getPolyPoints(
                        LatLng(currentLocation!.latitude!,
                            currentLocation!.longitude!),
                        marker,
                      );
                      Navigator.pop(context);
                    },
                    child: const Text("Get Directions"),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void searchMarkers(String query) {
    if (query.isEmpty) {
      setState(() {
        searchResults.clear();
      });
    } else {
      List<ChargerMarker> results = markers.where((marker) {
        return marker.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
      setState(() {
        searchResults = results.take(5).toList(); // Limit to 5 results
      });
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          buildMapPage(),
          ActivityPage(),
          FavoritesPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(251, 216, 181, 7),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget buildMapPage() {
    return currentLocation == null
        ? const Center(child: CircularProgressIndicator())
        : Stack(
            children: [
              GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(currentLocation!.latitude!,
                      currentLocation!.longitude!),
                  zoom: 14.5,
                ),
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                polylines: {
                  Polyline(
                    polylineId: const PolylineId("poly"),
                    color: Colors.blue,
                    points: polylineCoordinates,
                    width: 5,
                  ),
                },
                markers: {
                  Marker(
                    markerId: const MarkerId("source"),
                  ),
                  ...markers.map((charger) {
                    return Marker(
                      markerId: MarkerId(charger.name),
                      position: charger.location,
                      onTap: () {
                        setState(() {
                          selectedMarker = charger.location;
                        });
                        showBottomSheet(charger.location, charger);
                      },
                    );
                  }).toSet(),
                },
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: searchController,
                          decoration: const InputDecoration(
                            hintText: 'Search chargers',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16),
                            suffixIcon: Icon(Icons.search),
                          ),
                          onChanged: (value) {
                            searchMarkers(value);
                          },
                        ),
                      ),
                      if (searchResults.isNotEmpty)
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: searchResults.length * 60.0, // Adjust the height dynamically
                          ),
                          margin: const EdgeInsets.only(top: 5), // Change the top margin to adjust distance
                          decoration: BoxDecoration(
                            color: Colors.white, // Same color as the input bar
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: searchResults.length,
                            itemBuilder: (context, index) {
                              ChargerMarker charger = searchResults[index];
                              return ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                title: Text(charger.name),
                                onTap: () {
                                  setState(() {
                                    selectedMarker = charger.location;
                                  });
                                  showBottomSheet(charger.location, charger);
                                },
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
