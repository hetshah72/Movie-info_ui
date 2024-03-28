import 'package:flutter/material.dart';
import 'package:movie_ui_2/components/genre_card.dart';
import 'package:movie_ui_2/constants.dart';

class Genres extends StatelessWidget {
  Genres({
    super.key,
    required this.movieGenre,
  });
  List<String> movieGenre;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      //current movie genre display
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movieGenre.length,
          itemBuilder: (context, index) => GenreCard(
                genre: movieGenre[index],
              )),
    );
  }
}
