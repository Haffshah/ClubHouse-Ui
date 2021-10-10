import 'package:clubhouse/Config/Colors.dart';
import 'package:flutter/material.dart';

class UpcomingRooms extends StatelessWidget {
  const UpcomingRooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150.0,
      decoration: BoxDecoration(
        color: ColorsPalate.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('3:00 PM'),
                Text('7:00 PM'),
                Text('9:00 PM'),
              ],
            ),
            SizedBox(width: 12.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Flutter'.toUpperCase(), style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.w600,letterSpacing: 1.0),),
                    Text('Flutter Engage Recap 🔴'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New User OnBoarding 🏠'.toUpperCase(), style: Theme.of(context).textTheme.overline!.copyWith(fontWeight: FontWeight.w600,letterSpacing: 1.0), ),
                    Text('Welcome To ClubHouse'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ClubHouse Turns 1'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
