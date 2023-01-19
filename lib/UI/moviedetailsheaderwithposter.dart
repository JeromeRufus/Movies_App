import 'package:flutter/material.dart';
import 'package:movies_app/UI/moviedetailsheader.dart';
import 'package:movies_app/UI/movieposter.dart';
import 'package:movies_app/models/movie.dart';

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeaderWithPoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          MoviePoster(
            poster: movie.images[0].toString(),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: MovieDetailsHeader(movie: movie),
          ),
        ],
      ),
    );
  }
}
