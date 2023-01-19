import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieExtraPosters extends StatelessWidget {
  final List<String> posters;
  const MovieExtraPosters({super.key, required this.posters});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(),
        Text(
          "More Movie Posters ".toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            color: Colors.black26,
          ),
        ),
        Container(
          height: 160,
          padding: EdgeInsets.symmetric(vertical: 60),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(
              width: 8,
            ),
            itemCount: posters.length,
            itemBuilder: ((context, index) => ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(posters[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
