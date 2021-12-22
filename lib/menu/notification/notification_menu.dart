import 'package:ardin/menu/header/header.dart';
import 'package:ardin/menu/navbar/bottom_nav.dart';
import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';

class NotificationMenu extends StatelessWidget {
  const NotificationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          bottomNavigationBar: const BottomNavBar(
            activeIndex: 3,
          ),
          body: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: const [
                Header(),
                Expanded(
                  child: Center(
                    child: Text(
                      "No Notification For Now",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
