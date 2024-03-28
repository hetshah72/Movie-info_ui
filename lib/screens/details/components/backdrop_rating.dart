import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_ui_2/constants.dart';
import 'package:movie_ui_2/models/movie.dart';

class BackDropandCard extends StatelessWidget {
  BackDropandCard({super.key, required this.movie, required this.size});
  final Movie movie;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .4,
      child: Stack(
        children: <Widget>[
          //background image
          Container(
            height: size.height * .4 - 50,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(
                  image: AssetImage(movie.backdrop), fit: BoxFit.cover),
            ),
          ),
          //card with the current movie rating
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: size.width * 0.9,
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/star_fill.svg"),
                        Text(
                          "${movie.rating}" "/10",
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: Color(0xFF51CF66),
                          ),
                          child: Text(
                            "${movie.metascoreRating}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultPadding / 4,
                        ),
                        const Text("METASCORE",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        const Text("62 critic reviews",
                            style: TextStyle(color: kTextLightColor)),
                      ],
                    ),
                  ],
                ),
              )),
          const SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}
