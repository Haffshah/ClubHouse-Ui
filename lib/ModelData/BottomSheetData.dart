class BottomSheetData {
  final String imagePath;
  final String groupName;

  BottomSheetData({required this.imagePath, required this.groupName});
}

List courseName = [
  {
    "groupName": "Open",
    "imagePath": "images/open.png",
  },
  {
    "groupName": "Social",
    "imagePath": "images/social.png",
  },
  {
    "groupName": "Closed",
    "imagePath": "images/closed.png",
  },
  {
    "groupName": "Python",
    "imagePath": "images/python.png",
  },
  {
    "groupName": "Flutter",
    "imagePath": "images/flutter.jpg",
  },
  {
    "groupName": "Ruby",
    "imagePath": "images/ruby.png",
  },
  {
    "groupName": "Go",
    "imagePath": "images/go.jpg",
  },
  {
    "groupName": "Kotlin",
    "imagePath": "images/kotlin.png",
  },
  {
    "groupName": "Swift",
    "imagePath": "images/swift.png",
  },
  {
    "groupName": "Objective C",
    "imagePath": "images/objc.png",
  },
  {
    "groupName": "FireBase",
    "imagePath": "images/firebase.png",
  },
  {
    "groupName": "Bootstrap",
    "imagePath": "images/bootstrap.jpg",
  },
  {
    "groupName": "CSS",
    "imagePath": "images/css.png",
  },
];

List<BottomSheetData> courseDataList() {
  return courseName
      .map(
        (item) => BottomSheetData(
            imagePath: item['imagePath'], groupName: item['groupName']),
      )
      .toList();
}
