import 'package:clubhouse/Config/Colors.dart';

import 'package:clubhouse/Widgets/BottomEffect.dart';
import 'package:clubhouse/Widgets/BottoomSheetWidget.dart';
import 'package:clubhouse/Widgets/GreyContainerinBottomsheet.dart';
import 'package:clubhouse/Widgets/GridIconleft.dart';
import 'package:clubhouse/Widgets/LetsGoButtton.dart';
import 'package:clubhouse/Widgets/MessageIconRight.dart';
import 'package:clubhouse/Widgets/Profile_Image.dart';
import 'package:clubhouse/Widgets/RoomCard.dart';
import 'package:clubhouse/Widgets/StartRoom.dart';
import 'package:clubhouse/Widgets/TextFIeldDialogBox.dart';
import 'package:clubhouse/Widgets/UpcomingRooms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool indicator = false;

  Future showBottomSheet() async {
    return Future.delayed(const Duration(milliseconds: 650), () {
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
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Column(
              children: [
                GreyBoxContainerBottomSheet(),
                GestureDetector(
                  onTap: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return TextFieldDialogBox();
                      },
                    );
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
                    height: 200,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          BottomSheetWidget(),
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
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                ),
                LetsGoButton(),
              ],
            ),
          );
        },
      );
      setState(() {
        indicator = false;
      });
    });
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
                child: RoomCardWidget(
                  GroupName: 'Startup Club  ',
                  Image1: "images/user3.jpg",
                  Image2: "images/user2.jpg",
                  RoomNameCap: '🤓 MasterClass:',
                  RoomNameSmall: ' Write a Tech Resume That Pays',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: RoomCardWidget(
                  GroupName: 'Young, wild & free ',
                  Image1: "images/user4.jpg",
                  Image2: "images/user5.jpg",
                  RoomNameCap: "True Crime💀🎃",
                  RoomNameSmall: " Serial Killers, Abduction & DARK WEB",
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
                setState(() {
                  indicator = !indicator;
                  showBottomSheet();
                });
              },
              child: indicator
                  ? Container(
                      width: 180.0,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: ColorsPalate.green,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: CupertinoActivityIndicator(
                        radius: 12,
                        animating: true,
                      ),
                    )
                  : Container(
                      alignment: Alignment.bottomCenter,
                      child: StartRoom(),
                    ),
            ),
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
