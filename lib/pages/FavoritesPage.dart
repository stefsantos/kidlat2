import 'package:flutter/material.dart';

import '../favorites.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final FavoritesManager _favoritesManager = FavoritesManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _favoritesManager.favorites.isEmpty
          ? Center(
              child: Text(
                'No Favorites',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: _favoritesManager.favorites.length,
              itemBuilder: (context, index) {
                final item = _favoritesManager.favorites[index];
                return ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  leading: Image.network(
                    item.imageUrl,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(item.name),
                  subtitle: Text('Location: ${item.location.latitude}, ${item.location.longitude}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        _favoritesManager.removeFavorite(item);
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}
