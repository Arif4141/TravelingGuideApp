// import 'package:ardin/utility/data/feed_dummy.dart';
// import 'package:flutter/material.dart';
//
// class FeedVid extends StatefulWidget {
//   const FeedVid({Key? key}) : super(key: key);
//
//   @override
//   _FeedVidState createState() => _FeedVidState();
// }
//
// class _FeedVidState extends State<FeedVid> {
//   bool _customTileExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Stack(
//               children: [
//                 ListView.builder(
//                   itemCount: FeedContent.length,
//                   itemBuilder: (context, index) {
//                     return buildContainer(FeedContent[index]);
//                   },
//                 ),
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     height: 80,
//                     // color: Colors.orange,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         const Text(
//                           "APP NAME/LOGO",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w900,
//                               fontSize: 20),
//                         ),
//                         IntrinsicHeight(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text(
//                                 "Following",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 15),
//                               ),
//                               SizedBox(
//                                 width: 2,
//                               ),
//                               VerticalDivider(
//                                 width: 10,
//                                 thickness: 1,
//                                 indent: 2,
//                                 endIndent: 2,
//                                 color: Colors.white,
//                               ),
//                               SizedBox(
//                                 width: 2,
//                               ),
//                               Text(
//                                 "For You",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w900,
//                                     fontSize: 15),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Container buildContainer(FeedData Data) {
//     final timeThen = Data.timeStamp;
//     final timeNow = DateTime.now();
//     final timeDifferenceSec = timeNow.difference(timeThen).inSeconds;
//     final timeDifferenceMin = timeNow.difference(timeThen).inMinutes;
//     final timeDifferenceHour = timeNow.difference(timeThen).inHours;
//     final timeDifferenceDays = timeNow.difference(timeThen).inDays;
//     return Container(
//       color: Colors.black,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               // color: Colors.red,
//               width: 300,
//               child: ExpansionTile(
//                 title: Text(
//                   Data.title.toString(),
//                   style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w900,
//                       fontSize: 20),
//                 ),
//                 subtitle: Text(
//                   'Trailing expansion arrow icon',
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ),
//                 children: <Widget>[
//                   ListTile(
//                     title: Text(
//                       'This is tile number 1',
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Container(
//               width: 60,
//               // color: Colors.green,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     height: 80,
//                     width: 60,
//                     // color: Colors.orange,
//                     child: Stack(
//                       children: [
//                         const Align(
//                           child: CircleAvatar(
//                             child: Icon(
//                               Icons.person,
//                               size: 40,
//                             ),
//                             radius: 30,
//                           ),
//                           alignment: Alignment.topCenter,
//                         ),
//                         Align(
//                           alignment: Alignment.bottomCenter,
//                           child: IconButton(
//                             color: Colors.redAccent,
//                             iconSize: 25,
//                             onPressed: () {},
//                             icon: const Icon(Icons.add_circle),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 1,
//                   ),
//                   IconButton(
//                     color: Colors.white,
//                     iconSize: 30,
//                     onPressed: () {},
//                     icon: const Icon(Icons.favorite),
//                   ),
//                   const Text(
//                     "Number",
//                     style: TextStyle(color: Colors.white, fontSize: 10),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   IconButton(
//                     color: Colors.white,
//                     iconSize: 30,
//                     onPressed: () {},
//                     icon: const Icon(Icons.message),
//                   ),
//                   const Text(
//                     "Number",
//                     style: TextStyle(color: Colors.white, fontSize: 10),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   IconButton(
//                     color: Colors.white,
//                     iconSize: 30,
//                     onPressed: () {},
//                     icon: const Icon(Icons.share),
//                   ),
//                   const Text(
//                     "Number",
//                     style: TextStyle(color: Colors.white, fontSize: 10),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
