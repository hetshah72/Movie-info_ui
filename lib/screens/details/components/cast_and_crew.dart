import 'package:flutter/material.dart';
import 'package:movie_ui_2/constants.dart';
import 'package:movie_ui_2/models/movie.dart';
import 'package:movie_ui_2/screens/details/components/cast_card.dart';

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Cast & Crew",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w300,
            ),
          ),
          //Cast card display
          SizedBox(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movie.cast.length,
                itemBuilder: (context, index) {
                  return CastCard(
                    cast: movie.cast[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
