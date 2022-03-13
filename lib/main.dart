import 'package:flutter/material.dart';
import 'package:sticky_headers_example/pages/example_1.dart';
import 'package:sticky_headers_example/pages/example_2.dart';
import 'package:sticky_headers_example/pages/example_3.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Sticky Headers Example'),
        ),
        body: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: <Widget>[
              ListTile(
                title: Text('Example 1 - Headers and Content'),
                onTap: () => navigateTo(context, (context) => Example1()),
              ),
              ListTile(
                title: Text('Example 2 - Animated Headers with Content'),
                onTap: () => navigateTo(context, (context) => Example2()),
              ),
              ListTile(
                title: Text('Example 3 - Headers overlapping the Content'),
                onTap: () => navigateTo(context, (context) => Example3()),
              ),
            ],
          ).toList(growable: false),
        ),
      );
}

void navigateTo(BuildContext context, WidgetBuilder builder) =>
    Navigator.of(context).push(MaterialPageRoute(builder: builder));
