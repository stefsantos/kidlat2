import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'markers.dart'; // Import the markers file
import 'favorites.dart'; // Import the FavoritesManager
import 'selected_markers.dart'; // Import the SelectedMarkersManager
import 'pages/FavoritesPage.dart';
import 'pages/ActivityPage.dart';
import 'pages/ProfilePages/ProfilePage.dart';

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
  String? selectedMarkerName; // Variable to hold selected marker's name

  TextEditingController searchController = TextEditingController();
  List<ChargerMarker> searchResults = [];

  int _selectedIndex = 0; // Track the selected index
  ChargerMarker? selectedCharger; // Variable to hold selected marker's details

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
      "AIzaSyCAaL8ID7Ipzi5pzsNtT3eJC-gchL-F8i0",
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
        selectedMarker = destination; // Set the selected marker location
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          charger.imageUrl,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      charger.name,
                                      style: TextStyle(
                                        fontFamily: 'Poppins', 
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Color.fromRGBO(254, 182, 44, 1.0),
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      FavoritesManager().addFavorite(FavoriteItem(
                                        name: charger.name,
                                        imageUrl: charger.imageUrl,
                                        location: marker,
                                      ));
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                'Location: ${charger.location.latitude}, ${charger.location.longitude}',
                                style: TextStyle(
                                  fontFamily: 'Poppins', 
                                  fontSize: 10.0,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedMarker = marker;
                                    selectedMarkerName = charger.name; // Set selected marker name
                                    selectedCharger = charger; // Set selected marker details
                                    SelectedMarkersManager().addMarker(charger); // Add marker to the list
                                  });
                                  getPolyPoints(
                                    LatLng(currentLocation!.latitude!,
                                        currentLocation!.longitude!),
                                    marker,
                                  );
                                  Navigator.pop(context); 
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(254, 182, 44, 1.0),
                                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                child: const Text(
                                  "Get Directions",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins', 
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0, 
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
        searchResults = results; // No limit on the number of results
      });
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _centerMapOnMarker(LatLng markerLocation) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: markerLocation, zoom: 14.5),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          buildMapPage(),
          ActivityPage(), // No need to pass anything here
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
                          searchResults.clear(); // Hide the suggestions list
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
                          height: 5 * 60.0, // Set the height to fit 5 suggestions
                          margin: const EdgeInsets.only(top: 5),
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
                          child: ListView.builder(
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
                                    searchResults.clear(); // Hide the suggestions list
                                  });
                                  showBottomSheet(charger.location, charger);
                                },
                              );
                            },
                          ),
                        ),
                      if (selectedMarkerName != null)
                        GestureDetector(
                          onTap: () {
                            if (selectedMarker != null) {
                              _centerMapOnMarker(selectedMarker!);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('No marker selected'),
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(top: 5),
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
                            child: Text(
                              'Going to: $selectedMarkerName',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
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
