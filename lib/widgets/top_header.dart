import 'package:flutter/material.dart';

class TopHeader extends StatefulWidget {
  const TopHeader({super.key, required this.isExpanded});

  final bool isExpanded;

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  DateTime now = DateTime.now();

  monthName(int month) {
    switch (month) {
      case 1:
        return "Jan";
      case 2:
        return "Feb";
      case 3:
        return "Mar";
      case 4:
        return "Apr";
      case 5:
        return "May";
      case 6:
        return "Jun";
      case 7:
        return "Jul";
      case 8:
        return "Aug";
      case 9:
        return "Sep";
      case 10:
        return "Oct";
      case 11:
        return "Nov";
      case 12:
        return "Dec";
    }
  }

  @override
  initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        now = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 60.0, left: 24, right: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              curve: Curves.linearToEaseOut,
              duration: Duration(milliseconds: 300),
              style: TextStyle(
                color: widget.isExpanded ? Colors.black : Colors.white,
                fontSize: 80,
                fontWeight: FontWeight.bold,
                letterSpacing: -8,
                fontFamily: 'sf_pro',
              ),
              child: Text("${now.day}"),
            ),
            SizedBox(width: 8),
            CircleAvatar(backgroundColor: Colors.red, radius: 10),
            Spacer(),
            AnimatedDefaultTextStyle(
              curve: Curves.linearToEaseOut,
              style: TextStyle(
                color: widget.isExpanded ? Colors.black45 : Colors.white70,
                fontSize: 20,
              ),
              duration: Duration(milliseconds: 300),
              child: Text.rich(
                textAlign: TextAlign.end,
                TextSpan(
                  text:
                      "${monthName(now.month)} ${now.year.toString().substring(2)}\n",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'sf_pro',
                  ),
                  children: [
                    TextSpan(
                      text:
                          "${now.weekday == 7
                              ? 'Sunday'
                              : now.weekday == 1
                              ? 'Monday'
                              : now.weekday == 2
                              ? 'Tuesday'
                              : now.weekday == 3
                              ? 'Wednesday'
                              : now.weekday == 4
                              ? 'Thursday'
                              : now.weekday == 5
                              ? 'Friday'
                              : 'Saturday'} ",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'sf_pro',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
