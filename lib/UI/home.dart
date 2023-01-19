import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/UI/movie_viewList_details.dart';

import '../models/movie.dart';

class MovieListView extends StatelessWidget {
  //const MovieListView({super.key});
  final List<Movie> movieList = Movie.getMovies();
  // final List movies = [
  //   "Titanic",
  //   "Blade Runner",
  //   "Rambo",
  //   "The Avengers",
  //   "Avatar",
  //   "I am Legend",
  //   "The Wolf of Wall Street",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movies",
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              movieCard(movieList[index], context),
              Positioned(
                top: 10.0,
                child: movieImage(movieList[index].images[0]),
              ),
            ],
          );
          // return Card(
          //   margin: EdgeInsets.only(top: 10),
          //   elevation: 5.0,
          //   color: Colors.white,
          //   child: ListTile(
          //     leading: CircleAvatar(
          //       child: Container(
          //         width: 200,
          //         height: 200,
          //         decoration: BoxDecoration(
          //           //color: Colors.blue,
          //           image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: NetworkImage(
          //               movieList[index].images[0],
          //             ),
          //           ),
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         //child: Text("${movieList.elementAt(index).title}"),
          //       ),
          //     ),
          //     trailing: Text("Tral"),
          //     title: Text(movieList[index].title),
          //     subtitle: Text("${movieList.elementAt(index).director}"),
          //     //onTap: (() =>
          //     //debugPrint("Movie Name : ${movies.elementAt(index)}")),
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => MovieListViewDetails(
          //             movieName: movieList.elementAt(index).title,
          //             movie: movieList[index],
          //             images: movieList[index].images[0],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // );
        },
      ),
    );
  }
}

Widget movieCard(Movie movie, BuildContext context) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.only(
        left: 60,
      ),
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      child: Card(
        color: Theme.of(context).accentColor,
        child: Padding(
          padding: EdgeInsets.only(
            top: 8.0,
            left: 54,
            bottom: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text("Rating :${movie.imdbRating}/10"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Released : ${movie.released}"),
                  Text(movie.runtime),
                  Text(movie.rated),
                ],
              )
            ],
          ),
        ),
      ),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MovieListViewDetails(
            movieName: movie.title,
            movie: movie,
          ),
        ),
      );
    },
  );
}

Widget movieImage(String imageUrl) {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: NetworkImage(
          imageUrl,
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
