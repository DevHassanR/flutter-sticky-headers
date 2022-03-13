import 'package:flutter/material.dart';

import '../pages/example_1.dart';

class MoviesList extends StatelessWidget {
  final Size size;
  final List movies;

  MoviesList({required this.size, required this.movies});

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        width: size.width,
        height: 180,
        child: ListView.builder(
          itemCount: movies.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.only(right: 12),
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/${movies[index]}',
                      width: 172,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 12,
                    child: Text(
                      'Movie name',
                      style: TextStyle(
                          color: style.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ]));
          },
        ),
      );
}
