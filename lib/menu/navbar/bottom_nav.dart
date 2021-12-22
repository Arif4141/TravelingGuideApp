import 'package:ardin/main.dart';
import 'package:ardin/menu/calendar/calendar.dart';
import 'package:ardin/menu/favorite/favorite.dart';
import 'package:ardin/menu/feed/feed.dart';
import 'package:ardin/menu/notification/notification_menu.dart';
import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.activeIndex,
  }) : super(key: key);

  final int activeIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavIcon(
            activeIndex: widget.activeIndex,
            index: 0,
            iconData: Icons.home,
            label: "Home",
            color: Colors.black54,
          ),
          NavIcon(
            activeIndex: widget.activeIndex,
            index: 1,
            iconData: Icons.date_range,
            label: "Calendar",
            color: Colors.black54,
          ),
          NavIcon(
            activeIndex: widget.activeIndex,
            index: 2,
            iconData: Icons.dashboard,
            label: "Feed",
            color: Colors.black54,
          ),
          NavIcon(
            activeIndex: widget.activeIndex,
            index: 3,
            iconData: Icons.notifications,
            label: "Notification",
            color: Colors.black54,
          ),
          NavIcon(
            activeIndex: widget.activeIndex,
            index: 4,
            iconData: Icons.favorite,
            label: "Favorite",
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  const NavIcon({
    Key? key,
    required this.iconData,
    required this.label,
    required this.activeIndex,
    required this.index,
    required this.color,
    // required this.onPress,
  }) : super(key: key);
  final IconData iconData;
  final String label;
  final int index, activeIndex;
  final Color color;
  // final Function onPress;

  @override
  Widget build(BuildContext context) {
    List menu = [
      const MyHomePage(),
      const CalendarMenu(),
      const Feed(),
      const NotificationMenu(),
      const Favorite(),
    ];
    return IconButton(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      // splashRadius: 0,
      icon: Icon(
        iconData,
        size: 30,
      ),
      color: index == activeIndex ? Colors.blueAccent : color,
      onPressed: () {
        if (index != activeIndex) {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => menu[index],
            ),
            // MaterialPageRoute(builder: (context) => menu[index]),
          );
        }
      },
    );
  }
}
