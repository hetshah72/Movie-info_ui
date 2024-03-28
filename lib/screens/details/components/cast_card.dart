import 'package:flutter/material.dart';
import 'package:movie_ui_2/constants.dart';

class CastCard extends StatelessWidget {
  const CastCard({super.key, required this.cast});
  final Map cast;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Cast images
          Container(
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(cast['image'])),
            ),
          ),
          //Cast name
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          //Cast job
          Text(
            cast['movieName'],
            style: const TextStyle(color: kTextLightColor),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
