import 'package:flutter/material.dart';
import '../model/film.dart';

import '../widgets/item_detail.dart';

class DetailFilmScreen extends StatelessWidget {
  static const routeName = '/detail-film-screen';

  @override
  Widget build(BuildContext context) {
    final filmData = ModalRoute.of(context).settings.arguments as Film;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Film'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                filmData.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ItemDetail('Episode', filmData.episode.toString()),
              ItemDetail('Director', filmData.director),
              ItemDetail('Producer', filmData.producer),
              ItemDetail('Release date', filmData.releaseDate),
              ItemDetail('Opening', filmData.opening)
            ],
          ),
        ),
      ),
    );
  }
}
