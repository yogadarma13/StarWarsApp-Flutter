import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/film.dart';

class FilmProvider with ChangeNotifier {
  List<Film> _items = [];

  List<Film> get items {
    return [..._items];
  }

  Future<void> fetchFilm() async {
    final url = 'https://swapi.dev/api/films/';
    try {
      final response = await http.get(url);

      final listFilm = json.decode(response.body)['results'] as List<dynamic>;

      final List<Film> loadedFilm = [];
      listFilm.forEach((element) {
        loadedFilm.add(Film.fromJson(element));
      });

      _items = loadedFilm;
      notifyListeners();
    } catch (error) {
      print(error.toString());
    }
  }
}
