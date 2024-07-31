import 'markers.dart';

class SelectedMarkersManager {
  static final SelectedMarkersManager _instance = SelectedMarkersManager._internal();

  factory SelectedMarkersManager() {
    return _instance;
  }

  SelectedMarkersManager._internal();

  final List<ChargerMarker> _selectedMarkers = [];

  List<ChargerMarker> get selectedMarkers => _selectedMarkers;

  void addMarker(ChargerMarker marker) {
    _selectedMarkers.add(marker);
  }

  void removeMarker(ChargerMarker marker) {
    _selectedMarkers.remove(marker);
  }

  void clearMarkers() {
    _selectedMarkers.clear();
  }
}
