import 'package:flutter/material.dart';
import 'package:movie_ui_2/constants.dart';
import 'package:movie_ui_2/models/movie.dart';

class TitleCard extends StatelessWidget {
  TitleCard({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movie.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 37)),
            Row(
              children: [
                Text(
                  movie.year.toString(),
                  style: const TextStyle(color: kTextLightColor),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "PG-13",
                  style: TextStyle(color: kTextLightColor),
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(243, 109, 140, 1),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
              )),
        )
      ],
    );
  }
}
