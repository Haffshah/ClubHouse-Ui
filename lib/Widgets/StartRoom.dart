import 'package:clubhouse/Config/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartRoom extends StatelessWidget {
  const StartRoom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: ColorsPalate.green,
          borderRadius: BorderRadius.circular(25.0)),
      child: const Text.rich(
        TextSpan(
          children: [
            WidgetSpan(
              child: Icon(
                CupertinoIcons.add,
                size: 21.0,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: " Start a Room",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}