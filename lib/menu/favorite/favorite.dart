import 'package:ardin/menu/header/header.dart';
import 'package:ardin/menu/navbar/bottom_nav.dart';
import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          bottomNavigationBar: const BottomNavBar(
            activeIndex: 4,
          ),
          body: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: const [
                Header(),
                Expanded(
                  child: Center(
                    child: Text(
                      "Favorite List Is Still Empty",
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
