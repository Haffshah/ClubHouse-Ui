import 'package:clubhouse/Config/Colors.dart';
import 'package:clubhouse/Widgets/BottomEffect.dart';
import 'package:clubhouse/Widgets/GridIconleft.dart';
import 'package:clubhouse/Widgets/MessageIconRight.dart';
import 'package:clubhouse/Widgets/Profile_Image.dart';
import 'package:clubhouse/Widgets/RoomCard.dart';
import 'package:clubhouse/Widgets/StartRoom.dart';
import 'package:clubhouse/Widgets/UpcomingRooms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget bottomSheetElement(
    String imagePath,
    String text,
    int index,
    int selected,
  ) {
    return Ink(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: (selected == index) ? ColorsPalate.grey : Colors.transparent,
        border: (selected == index)
            ? Border.all(color: ColorsPalate.bordergrey)
            : Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: ProfileImage(
                size: 60.0,
                imagePath: imagePath,
              ),
            ),
          ),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              CupertinoIcons.search,
              size: 28,
            ),
            onPressed: () {}),
        actions: [
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    CupertinoIcons.envelope_open,
                    size: 25,
                  ),
                  onPressed: () {}),
              Positioned(
                right: 0,
                top: 10.0,
                child: Text(
                  '✨',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
              icon: Icon(CupertinoIcons.calendar, size: 28), onPressed: () {}),
          IconButton(
              icon: Icon(CupertinoIcons.bell, size: 28), onPressed: () {}),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ProfileImage(
                imagePath: 'images/user2.jpg',
                size: 36,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 80.0),
            children: [
              UpcomingRooms(),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
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
                              'Startup Club '.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .overline!
                                  .copyWith(
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
                          '🤓 MasterClass:'.toUpperCase() +
                              ' Write a Tech Resume That Pays',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
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
                                        imagePath: 'images/user3.jpg',
                                        size: 48.0,
                                      ),
                                    ),
                                    ProfileImage(
                                      imagePath: 'images/user2.jpg',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Kate Pozeznik  💬',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                        ),
                                  ),
                                  Text(
                                    'Nikita Gupta  💬',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                        ),
                                  ),
                                  Text(
                                    'Mike TomaSello 💬',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                        ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '93',
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
                                        '7',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
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
                              'Young, wild & free '.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .overline!
                                  .copyWith(
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
                          'True Crime💀🎃'.toUpperCase() +
                              ' Serial Killers, Abduction & DARK WEB',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
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
                                        imagePath: 'images/user5.jpg',
                                        size: 48.0,
                                      ),
                                    ),
                                    ProfileImage(
                                      imagePath: 'images/user4.jpg',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Dhruvin busa  💬',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Marzia Dossal  💬',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Akashita Nikki Pravin 💬',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '1k',
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
                                        '65',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: RoomCardWidget(
                  GroupName: "Hot on the mic",
                  Image1: "images/user6.jpg",
                  Image2: "images/user1.png",
                  RoomNameCap: "🚨",
                  RoomNameSmall: "Afternoon Delight Comedy Show! 😂🚀🍑",
                ),
              ),
            ],
          ),
          Container(alignment: Alignment.bottomCenter, child: BottomEffect()),
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                        child: Column(
                          children: [
                            Container(
                              height: 5,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey),
                            ),
                            GestureDetector(
                              onTap: () {
                                showCupertinoDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CupertinoAlertDialog(
                                        content: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: CupertinoTextField(
                                            maxLength: 5,
                                            maxLines: 6,
                                          ),
                                        ),
                                        title: Column(
                                          children: [
                                            Text(
                                              'Add a Title',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'e.g Raising wolves - good idea ?',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                        actions: [
                                          CupertinoDialogAction(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                          CupertinoDialogAction(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'Set Title',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  '+ Add a Topic',
                                  style: TextStyle(
                                      color: ColorsPalate.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Container(
                                height:200,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            bottomSheetElement(
                                                "images/open.png", "Open", 1, 0),
                                            bottomSheetElement(
                                                "images/social.png",
                                                "Social",
                                                2,
                                                0),
                                            bottomSheetElement(
                                                "images/closed.png",
                                                "Closed",
                                                3,
                                                0),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            bottomSheetElement(
                                                "images/open.png", "Open", 4, 0),
                                            bottomSheetElement(
                                                "images/social.png",
                                                "Social",
                                                5,
                                                0),
                                            bottomSheetElement(
                                                "images/closed.png",
                                                "Closed",
                                                6,
                                                0),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            bottomSheetElement(
                                                "images/open.png", "Open", 4, 0),
                                            bottomSheetElement(
                                                "images/social.png",
                                                "Social",
                                                5,
                                                0),
                                            bottomSheetElement(
                                                "images/closed.png",
                                                "Closed",
                                                6,
                                                0),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 12.0,
                              ),
                              child: Text(
                                "Start a room open to everyone",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            InkWell(
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
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: StartRoom()),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(bottom: 20.0, left: 25.0),
            child: GridIconleft(),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(bottom: 20.0, right: 25.0),
            child: MessageIconRight(),
          ),
        ],
      ),
    );
  }
}
