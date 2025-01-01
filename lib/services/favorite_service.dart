import 'package:shared_preferences/shared_preferences.dart';

class FavoriteService {
  static const String _favoritesKey = "favorites";

  Future<void> addToFavorites(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites =
        prefs.getStringList(_favoritesKey) ?? []; // قائمة المفضلة الحالية
    if (!favorites.contains(productId.toString())) {
      favorites.add(productId.toString());
      await prefs.setStringList(_favoritesKey, favorites);
    }
  }

  Future<void> removeFromFavorites(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites =
        prefs.getStringList(_favoritesKey) ?? []; // قائمة المفضلة الحالية
    favorites.remove(productId.toString());
    await prefs.setStringList(_favoritesKey, favorites);
  }

  Future<bool> isFavorite(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites =
        prefs.getStringList(_favoritesKey) ?? []; // قائمة المفضلة الحالية
    return favorites.contains(productId.toString());
  }
}
