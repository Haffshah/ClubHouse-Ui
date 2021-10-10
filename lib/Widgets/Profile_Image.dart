import 'package:flutter/cupertino.dart';

class ProfileImage extends StatelessWidget {
  final double size;
  final String imagePath;

  const ProfileImage({Key? key, this.size = 48, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 18),
      child: Image.asset(imagePath, height: size,width: size,fit:BoxFit.cover
        ,),
    );
  }
}


