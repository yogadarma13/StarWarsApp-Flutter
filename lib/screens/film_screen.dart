import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/film_provider.dart';
import '../widgets/list_item.dart';

class FilmScreen extends StatefulWidget {
  @override
  _FilmScreenState createState() => _FilmScreenState();
}

class _FilmScreenState extends State<FilmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StarWars'),
      ),
      body: FutureBuilder(
        future: Provider.of<FilmProvider>(context, listen: false).fetchFilm(),
        builder: (ctx, filmSnap) {
          if (filmSnap.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Consumer<FilmProvider>(
            builder: (ctx, filmsData, _) => ListView.builder(
              itemCount: filmsData.items.length,
              itemBuilder: (context, index) => ListItem(filmsData.items[index]),
            ),
          );
        },
      ),
    );
  }
}
