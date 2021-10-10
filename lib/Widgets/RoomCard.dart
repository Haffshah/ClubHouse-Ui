import 'package:clubhouse/Widgets/Profile_Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomCardWidget extends StatelessWidget {
  final String GroupName;
  final String RoomNameCap;
  final String RoomNameSmall;
  final String Image1;
  final String Image2;
  const RoomCardWidget({
    Key? key,
    required this.RoomNameCap,
    required this.GroupName,
    required this.RoomNameSmall,
    required this.Image1,
    required this.Image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GroupName.toUpperCase(),
                  style: Theme.of(context).textTheme.overline!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 1.0),
                ),
                Icon(
                  Icons.home_filled,
                  color: Colors.green,
                  size: 14,
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Text(
              RoomNameCap.toUpperCase() + RoomNameSmall,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 28.0,
                          top: 20.0,
                          child: ProfileImage(
                            imagePath: Image1,
                            size: 48.0,
                          ),
                        ),
                        ProfileImage(
                          imagePath: Image2,
                          size: 48.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Leh Lamarr  💬',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Text(
                        'Christine Little  💬',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Text(
                        'Henry Kaiser 💬',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Text(
                        'Fizaa Dosani 💬',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Text(
                        'Dylan Blau 💬',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Text(
                        'Bianca Peynado 💬',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '343',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            CupertinoIcons.person_alt,
                            size: 18,
                            color: Colors.grey,
                          ),
                          Text(
                            '/',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '61',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            CupertinoIcons.chat_bubble_text_fill,
                            color: Colors.grey,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
