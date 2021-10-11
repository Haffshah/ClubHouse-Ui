import 'package:flutter/material.dart';

class GeryBoxContainerBottomSheet extends StatelessWidget {
  const GeryBoxContainerBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 40.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey),
    );
  }
}