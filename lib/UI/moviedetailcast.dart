import 'package:flutter/material.dart';

import '../models/movie.dart';

class MovieCastDetails extends StatelessWidget {
  final Movie movie;
  const MovieCastDetails({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          MovieField(
            field: "Cast",
            value: movie.actors,
          ),
          MovieField(
            field: "Director",
            value: movie.director,
          ),
          MovieField(
            field: "Awards",
            value: movie.awards,
          ),
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field;
  final String value;
  const MovieField({super.key, required this.field, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$field :",
          style: TextStyle(
            color: Colors.black38,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
