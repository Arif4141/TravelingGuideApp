// import 'package:flutter/material.dart';
//
// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//         ),
//         width: MediaQuery.of(context).size.width,
//         height: 60,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.only(top: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: const [
//             NavIcon(
//               iconData: Icons.home,
//               label: "Home",
//             ),
//             NavIcon(
//               iconData: Icons.feed,
//               label: "Feed",
//             ),
//             SizedBox(
//               width: 60,
//             ),
//             NavIcon(
//               iconData: Icons.favorite,
//               label: "Wishlist",
//             ),
//             NavIcon(
//               iconData: Icons.date_range,
//               label: "Calendar",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class NavIcon extends StatelessWidget {
//   const NavIcon({
//     Key? key,
//     required this.iconData,
//     required this.label,
//   }) : super(key: key);
//   final IconData iconData;
//   final String label;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(
//           iconData,
//           color: Colors.black54,
//           size: 30,
//         ),
//         // Text(label),
//       ],
//     );
//   }
// }
