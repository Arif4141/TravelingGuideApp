import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  // VoidCallback updateState(int index) {
  //   return () {
  //     setState(() {
  //       widget.onTap(index);
  //     });
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(),
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const NavIcon(
            // activeIndex: widget.activeIndex,
            iconData: Icons.feed,
            label: "Feed",
            size: 30,
            // index: 1,
            // onTap: updateState(1),
          ),
          const SizedBox(
            width: 20,
          ),
          const NavIcon(
            // activeIndex: widget.activeIndex,
            iconData: Icons.favorite,
            label: "Wishlist",
            size: 30,
            // index: 2,
            // onTap: updateState(2),
          ),
          const SizedBox(
            width: 20,
          ),
          const NavIcon(
            // activeIndex: widget.activeIndex,
            iconData: Icons.payment,
            label: "Transaction",
            size: 30,
            // index: 3,
            // onTap: updateState(3),
          ),
          const SizedBox(
            width: 20,
          ),
          const VerticalDivider(
            thickness: 1,
          ),
          Row(
            children: const [
              NavIcon(
                // activeIndex: widget.activeIndex,
                iconData: Icons.account_circle,
                label: "",
                size: 30,
                // index: 5,
                // onTap: updateState(5),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Nama")
            ],
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
    required this.size,
    // required this.index,
    // required this.activeIndex,
    // required this.onTap,
  }) : super(key: key);
  final IconData iconData;
  final String label;
  final double size;
  // final int index, activeIndex;
  // final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            iconData,
            size: size,
          ),
          color: Colors.black54,
          focusColor: Colors.red, highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          // tooltip: label,
          onPressed: () {
            // index == activeIndex;
            // onTap;
          },
        ),
        // Text(label),
      ],
    );
  }
}
