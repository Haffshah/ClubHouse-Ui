import 'package:clubhouse/Config/Colors.dart';
import 'package:clubhouse/ModelData/BottomSheetData.dart';
import 'package:clubhouse/Widgets/Profile_Image.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  int selected = 0;
  List<BottomSheetData> myList = courseDataList();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 4),
        physics: NeverScrollableScrollPhysics(),
        itemCount: myList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                print("index");
                selected = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: (selected == index)
                    ? ColorsPalate.grey
                    : Colors.transparent,
                border: (selected == index)
                    ? Border.all(color: ColorsPalate.bordergrey)
                    : Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ProfileImage(
                      size: 60.0,
                      imagePath: myList[index].imagePath,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    myList[index].groupName,
                    overflow: TextOverflow.ellipsis,
                  )),
                ],
              ),
            ),
          );
        });
  }
}
