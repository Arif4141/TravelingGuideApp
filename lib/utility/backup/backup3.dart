// import 'package:ardin/menu/dashboard/category/category.dart';
// import 'package:ardin/menu/header/header.dart';
// import 'package:ardin/menu/navbar/bottom_nav.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
// class Main_Menu extends StatefulWidget {
//   const Main_Menu({Key? key}) : super(key: key);
//
//   @override
//   _Main_MenuState createState() => _Main_MenuState();
// }
//
// class _Main_MenuState extends State<Main_Menu> {
//   int _currentIndex = 0;
//   List cardList = [
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.all(
//           Radius.circular(5),
//         ),
//       ),
//       height: 200,
//       width: 100,
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.all(
//           Radius.circular(5),
//         ),
//       ),
//       height: 200,
//       width: 100,
//     ),
//   ];
//   List<T> map<T>(List list, Function handler) {
//     List<T> result = [];
//     for (var i = 0; i < list.length; i++) {
//       result.add(handler(i, list[i]));
//     }
//     return result;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       color: Colors.white,
//       child: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Container(
//           // color: Colors.white,
//           child: Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(5),
//                   ),
//                 ),
//                 height: 200,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CarouselSlider(
//                 options: CarouselOptions(
//                   height: 200.0,
//                   autoPlay: true,
//                   autoPlayInterval: Duration(seconds: 10),
//                   autoPlayAnimationDuration: Duration(milliseconds: 800),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   pauseAutoPlayOnTouch: true,
//                   aspectRatio: 2.0,
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       _currentIndex = index;
//                     });
//                   },
//                 ),
//                 items: cardList.map((card) {
//                   return Builder(builder: (BuildContext context) {
//                     return Container(
//                       height: MediaQuery.of(context).size.height * 0.30,
//                       width: MediaQuery.of(context).size.width,
//                       child: Card(
//                         color: Colors.grey,
//                         child: card,
//                       ),
//                     );
//                   });
//                 }).toList(),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: map<Widget>(cardList, (index, url) {
//                   return Container(
//                     width: 10.0,
//                     height: 10.0,
//                     margin:
//                     EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: _currentIndex == index
//                           ? Colors.blueAccent
//                           : Colors.grey,
//                     ),
//                   );
//                 }),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Category(),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 color: Colors.grey,
//                 height: 100,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 color: Colors.grey,
//                 height: 100,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 color: Colors.grey,
//                 height: 100,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 color: Colors.grey,
//                 height: 100,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
