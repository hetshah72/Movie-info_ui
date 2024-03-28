import 'package:flutter/material.dart';
import 'package:movie_ui_2/constants.dart';
import 'package:movie_ui_2/models/movie.dart';
import 'package:movie_ui_2/screens/home/components/movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController; //for the knowing the card details
  int initialPage = 1; //for selection of the card display at app startup

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: .8, //display ratio of the card
      initialPage: initialPage, //starting page
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
          aspectRatio: .85,
          child: PageView.builder(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            itemCount: movies.length,
            itemBuilder: (context, index) => MovieCard(movie: movies[index]),
          )),
    );
  }
}
