import 'package:flutter/material.dart';

import '../models/movie.dart';

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeader({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${movie.year}.${movie.genre}".toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.cyan,
          ),
        ),
        Text(
          movie.title,
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            children: [
              TextSpan(
                text: movie.plot,
              ),
              TextSpan(
                text: "More...",
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
