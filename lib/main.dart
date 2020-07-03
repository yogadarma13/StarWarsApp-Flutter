import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/film_provider.dart';
import './screens/film_screen.dart';
import './screens/detail_film_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => FilmProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'StarWars',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: FilmScreen(),
        routes: {DetailFilmScreen.routeName: (ctx) => DetailFilmScreen()},
      ),
    );
  }
}
