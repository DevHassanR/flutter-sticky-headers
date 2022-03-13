import 'package:flutter/material.dart';
import 'package:sticky_headers_example/utils/movies.dart';
import 'package:sticky_headers_example/utils/style.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../widgets/header_widget.dart';
import '../widgets/movies_list_widget.dart';

final style = Style();

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: style.bg,
      appBar: AppBar(
        backgroundColor: style.bg,
        elevation: 0,
        leading: Icon(
          Icons.list,
          color: style.primary,
        ),
        title: Text('Sticky Headers Example'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search,
              color: style.primary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              GetMovies(
                title: 'New Releases',
                movies: animated,
              ),
              SizedBox(
                height: 20,
              ),
              GetMovies(
                title: 'Comedy movies',
                movies: comedy,
              ),
              SizedBox(
                height: 20,
              ),
              GetMovies(
                title: 'Animated movies',
                movies: action,
              ),
              SizedBox(
                height: 20,
              ),
              GetMovies(
                title: 'New Releases',
                movies: comedy,
              ),
              SizedBox(
                height: 20,
              ),
              GetMovies(
                title: 'Comedy movies',
                movies: animated,
              ),
              SizedBox(
                height: 20,
              ),
              GetMovies(
                title: 'Animated movies',
                movies: comedy,
              ),
            ],
          ),
        ),
      ));
}

class GetMovies extends StatelessWidget {
  final String title;
  final List movies;

  GetMovies({required this.title, required this.movies});

  @override
  Widget build(BuildContext context) => StickyHeader(
        header: HeaderWidget(title: title),
        content: MoviesList(size: MediaQuery.of(context).size, movies: movies),
      );
}
