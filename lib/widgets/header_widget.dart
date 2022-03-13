import 'package:flutter/material.dart';

import '../pages/example_1.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Container(
        color: style.bg,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: style.primary,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'View all',
              style: TextStyle(
                  color: style.secondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
}
