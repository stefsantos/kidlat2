import 'package:google_maps_flutter/google_maps_flutter.dart';

class FavoriteItem {
  final String name;
  final String imageUrl;
  final LatLng location;

  FavoriteItem({
    required this.name,
    required this.imageUrl,
    required this.location,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteItem &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          imageUrl == other.imageUrl &&
          location == other.location;

  @override
  int get hashCode => name.hashCode ^ imageUrl.hashCode ^ location.hashCode;
}

class FavoritesManager {
  static final FavoritesManager _instance = FavoritesManager._internal();

  factory FavoritesManager() => _instance;

  FavoritesManager._internal();

  final List<FavoriteItem> _favorites = [];

  List<FavoriteItem> get favorites => List.unmodifiable(_favorites);

  void addFavorite(FavoriteItem item) {
    if (!_favorites.contains(item)) {
      _favorites.add(item);
    }
  }

  void removeFavorite(FavoriteItem item) {
    _favorites.remove(item);
  }
}

