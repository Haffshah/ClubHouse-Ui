import 'package:clubhouse/Config/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridIconleft extends StatelessWidget {
  const GridIconleft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.circle_grid_3x3_fill,
            size: 28.0,
          ),
        ),
        Positioned(
          right: 5.0,
          bottom: 12.0,
          child: Icon(
            CupertinoIcons.circle_filled,
            color: ColorsPalate.green,
            size: 18.0,
          ),
        ),
      ],
    );
  }
}
