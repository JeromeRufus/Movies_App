import 'package:flutter/material.dart';

import '../models/movie.dart';

class MovieListViewDetails extends StatelessWidget {
  //const MovieListViewDetails({super.key});
  final String movieName;
  final Movie movie;
  final String images;

  const MovieListViewDetails({
    super.key,
    required this.movieName,
    required this.movie,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(this.movieName),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Container(
                child: Image(
                  image: NetworkImage(this.images),
                ),
              ),
            ),
            Container(
              child: TextButton(
                child: Text("Go Back"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
