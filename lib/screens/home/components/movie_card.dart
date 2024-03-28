import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_ui_2/constants.dart';
import 'package:movie_ui_2/models/movie.dart';
import 'package:movie_ui_2/screens/details/details_screen.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        //Navigate to details screen
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen(movie: movie)));
          },
          child: Column(sa
            children: <Widget>[
              //Movie Poster display
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        // alignment: Alignment.bottomCenter,
                        image: AssetImage(movie.poster),
                      )),
                ),
              ),
              //movie name display
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              //Movie rating display
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/star_fill.svg",
                    height: 20,
                  ),
                  const SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  Text(
                    "${movie.rating}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
