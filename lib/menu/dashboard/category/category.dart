import 'package:ardin/menu/dashboard/category/category_menu.dart';
import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatefulWidget {
  const Category({
    Key? key,
    // required this.tapIndex,
  }) : super(key: key);

  // final int tapIndex;
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  // VoidCallback updateState(int index) {
  //   return () {
  //     setState(() {
  //       widget.onTap(index);
  //     });
  //   };
  // }

  final String Name = "assets/icons/";

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(),
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButt(
            icon: "assets/icons/temple-of-heaven-svgrepo-com.svg",
            label: "Temple",
          ),
          IconButt(
            icon: "assets/icons/waterfall-svgrepo-com.svg",
            label: "Nature",
          ),
          IconButt(
            icon: "assets/icons/landscape-svgrepo-com.svg",
            label: "Mountain",
          ),
          IconButt(
            icon: "assets/icons/beach-day-svgrepo-com.svg",
            label: "Beach",
          ),
        ],
      ),
    );
  }
}

class IconButt extends StatelessWidget {
  const IconButt({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final String icon, label;

  @override
  Widget build(BuildContext context) {
    List menu = [];
    return Column(
      children: [
        IconButton(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          iconSize: 70,
          icon: SvgPicture.asset(icon, color: Colors.black87),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => CategoryMenus(),
              ),
              // MaterialPageRoute(builder: (context) => menu[index]),
            );
          },
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
