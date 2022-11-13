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
        title: Text("Movies"),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(top: 10),
            elevation: 5.0,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        movieList[index].images[0],
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //child: Text("${movieList.elementAt(index).title}"),
                ),
              ),
              trailing: Text("Tral"),
              title: Text(movieList[index].title),
              subtitle: Text("${movieList.elementAt(index).director}"),
              //onTap: (() =>
              //debugPrint("Movie Name : ${movies.elementAt(index)}")),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieListViewDetails(
                      movieName: movieList.elementAt(index).title,
                      movie: movieList[index],
                      images: movieList[index].images[0],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
