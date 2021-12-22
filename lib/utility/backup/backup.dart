// import 'package:ardin/menu/navbar/top_nav.dart';
// import 'package:ardin/utility/constant.dart';
// import 'package:ardin/utility/controller.dart';
// import 'package:ardin/utility/responsive.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
// // import 'package:provider/provider.dart';
//
// class Header extends StatefulWidget {
//   const Header({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<Header> createState() => _HeaderState();
// }
//
// class _HeaderState extends State<Header> {
//   FocusNode _focus = new FocusNode();
//   // TextEditingController _controller = new TextEditingController();
//   bool seacrh = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _focus.addListener(_onFocusChange);
//   }
//
//   @override
//   void dispose() {
//     _focus.removeListener(_onFocusChange);
//     _focus.dispose();
//   }
//
//   void _onFocusChange() {
//     seacrh = !seacrh;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//         ),
//         width: MediaQuery.of(context).size.width,
//         height: 50,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.only(bottom: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Row(
//               // crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Expanded(
//                   child: Row(
//                     children: [
//                       if (!seacrh == true)
//                         Row(
//                           children: [
//                             Text(
//                               "APP LOGO/NAME",
//                               style: Theme.of(context).textTheme.headline6,
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                           ],
//                         ),
//                       Expanded(
//                         child: Container(
//                           height: 40,
//                           child: TextField(
//                             focusNode: _focus,
//                             decoration: new InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 contentPadding: EdgeInsets.zero,
//                                 prefixIcon: new Icon(Icons.search),
//                                 hintText: 'Search...'),
//                           ),
//                         ),
//                       ),
//                       if (!Responsive.isMobile(context))
//                         Expanded(
//                           child: TopNavBar(),
//                         ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             // Divider(
//             //   thickness: 1,
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
