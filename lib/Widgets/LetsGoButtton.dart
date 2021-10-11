import 'package:clubhouse/Config/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LetsGoButton extends StatelessWidget {
  const LetsGoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: ColorsPalate.green,
            borderRadius: BorderRadius.circular(25.0)),
        child: Text(
          "🎉 Let\'s go",
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}