import 'package:flutter/material.dart';
import 'package:movies_app/UI/MovieDetailsThumbnail.dart';

import '../models/movie.dart';

class MovieListViewDetails extends StatelessWidget {
  //const MovieListViewDetails({super.key});
  final String movieName;
  final Movie movie;
  //final String images;

  const MovieListViewDetails({
    super.key,
    required this.movieName,
    required this.movie,
    //required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(this.movieName),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       // Row(
      //       //   //mainAxisAlignment: MainAxisAlignment.start,
      //       //   children: [
      //       //     Padding(
      //       //       padding: EdgeInsets.only(top: 45, right: 30),
      //       //     ),
      //       //     Title(
      //       //       color: Theme.of(context).primaryColorDark,
      //       //       child: Text(
      //       //         this.movieName,
      //       //         style: TextStyle(
      //       //           fontSize: 20,
      //       //         ),
      //       //       ),
      //       //     ),
      //       //   ],
      //       // ),
      //       SizedBox(
      //         height: 40,
      //       ),
      //       // Card(
      //       //   child: Container(
      //       //     child: Image(
      //       //       image: NetworkImage(this.images),
      //       //     ),
      //       //   ),
      //       // ),
      //       Container(
      //         child: TextButton(
      //           child: Text("Go Back"),
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: ListView(
        children: [
          MovieDetailsThumbnail(thumbnail: movie.images[0]),
        ],
      ),
    );
  }
}
