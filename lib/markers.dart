import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChargerMarker {
  final String name;
  final LatLng location;
  final String imageUrl;

  ChargerMarker({required this.name, required this.location, required this.imageUrl});
}

final List<ChargerMarker> markers = [


  ChargerMarker(
    name: 'yco',
    location: const LatLng(14.536589958708459, 120.98231704232873),
    imageUrl: 'https://pbs.twimg.com/media/F8ECE4tWoAAH9mi.jpg:large',
  ),
  ChargerMarker(
    name: 'niccolo',
    location: const LatLng(14.535789958708459, 120.98151704232873),
    imageUrl: 'https://pbs.twimg.com/media/F8ECE4tWoAAH9mi.jpg:large',
  ),
  ChargerMarker(
    name: 'matt',
    location: const LatLng(14.53589958708459, 120.98151704232873),
    imageUrl: 'https://pbs.twimg.com/media/F8ECE4tWoAAH9mi.jpg:large',
  ),
  
];
