import 'package:flutter/material.dart';
import '../screens/detail_film_screen.dart';
import '../model/film.dart';

class ListItem extends StatelessWidget {
  final Film film;

  ListItem(this.film);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, DetailFilmScreen.routeName,
          arguments: film),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  film.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(film.producer),
                SizedBox(height: 8),
                Text(film.releaseDate)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
