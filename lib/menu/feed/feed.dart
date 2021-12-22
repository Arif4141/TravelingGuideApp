import 'package:ardin/menu/feed/feed_stuff.dart';
import 'package:ardin/menu/header/header_feed.dart';
import 'package:ardin/menu/navbar/bottom_nav.dart';
import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            tooltip: "Post Your Moment",
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Colors.lightBlueAccent,
            child: const Icon(
              Icons.add_a_photo_outlined,
              size: 40,
            ),
          ),
          bottomNavigationBar: const BottomNavBar(
            activeIndex: 2,
          ),
          body: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: const [
                Header_Feed(),
                Expanded(
                  child: FeedStuff(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
