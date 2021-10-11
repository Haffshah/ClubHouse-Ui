import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageIconRight extends StatelessWidget {
  const MessageIconRight({
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
            Icons.navigation_outlined,
            size: 28.0,
          ),
        ),
      ],
    );
  }
}