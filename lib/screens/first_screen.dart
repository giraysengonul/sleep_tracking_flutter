import 'package:flutter/material.dart';
import 'package:sleep_pattern_maker_flutter/clock/clock.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 85.0,
        ),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            child: Clock()),
        SizedBox(
          height: 85.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ALARM TIME",
                  style: TextStyle(
                    color: Color(0xffff0863),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.3,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "06:12 PM",
                  style: TextStyle(
                    color: Color(0xff2d386b),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WAKE UP IN",
                  style: TextStyle(
                    color: Color(0xffff0863),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.3,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "08:00 AM",
                  style: TextStyle(
                    color: Color(0xff2d386b),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
