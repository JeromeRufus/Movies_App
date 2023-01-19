import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({super.key, required this.poster});

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(poster),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
