import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';

class Header_Feed extends StatelessWidget {
  const Header_Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: const BoxDecoration(
          color: bgColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 40,
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Text(
              "APP NAME/LOGO",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
