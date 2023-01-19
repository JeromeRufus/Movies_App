import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieDetailsThumbnail extends StatelessWidget {
  const MovieDetailsThumbnail({super.key, required this.thumbnail});

  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(
              Icons.play_circle_fill_outlined,
              size: 100,
              color: Colors.white,
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x00f5f5), Color(0xfff5f5f5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: 80,
        ),
      ],
    );
  }
}
