import 'package:flutter/material.dart';
import 'package:movie_ui_2/constants.dart';
import 'package:movie_ui_2/models/movie.dart';
import 'package:movie_ui_2/screens/details/components/backdrop_rating.dart';
import 'package:movie_ui_2/screens/details/components/cast_and_crew.dart';
import 'package:movie_ui_2/screens/details/components/genres.dart';
import 'package:movie_ui_2/screens/details/components/title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackDropandCard(movie: movie, size: size), //background image
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TitleCard(
                movie:
                    movie), //Card with the Movie name and "add to favorites" button
          ),
          const SizedBox(
            height: 20,
          ),
          Genres(movieGenre: movie.genra), //current movie Genres
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
            child: Text(
              "Plot Summary",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
            child: Text(
              movie.plot,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: kTextLightColor),
            ),
          ),
          CastAndCrew(movie: movie),
        ],
      ),
    );
  }
}
