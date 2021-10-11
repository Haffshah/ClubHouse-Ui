import 'package:flutter/material.dart';

class BottomEffect extends StatelessWidget {
  const BottomEffect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
              Theme.of(context).scaffoldBackgroundColor
            ],
          )),
    );
  }
}