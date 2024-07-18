import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'markers.dart'; // Import the markers file

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng destination = LatLng(14.536189958708459, 120.98191704232873);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;
  Location location = Location();
  LatLng? selectedMarker;

  TextEditingController searchController = TextEditingController();
  List<ChargerMarker> searchResults = [];

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
                    subtitle: Text('Location: ${charger.location.latitude}, ${charger.location.longitude}'),
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
        searchResults = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kidlat",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: currentLocation == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search chargers',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      searchMarkers(value);
                    },
                  ),
                ),
                if (searchResults.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        ChargerMarker charger = searchResults[index];
                        return ListTile(
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
                  )
                else
                  Expanded(
                    child: Stack(
                      children: [
                        GoogleMap(
                          initialCameraPosition: CameraPosition(
                            target: LatLng(currentLocation!.latitude!,
                                currentLocation!.longitude!),
                            zoom: 14.5,
                          ),
                          myLocationEnabled: true,
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
                      ],
                    ),
                  ),
              ],
            ),
    );
  }
}
