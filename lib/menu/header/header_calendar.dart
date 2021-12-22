import 'package:ardin/utility/constant.dart';
import 'package:flutter/material.dart';

class headerCalendar extends StatelessWidget {
  const headerCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: const BoxDecoration(
          color: bgColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PLAN AND HISTORY",
                  style: Theme.of(context).textTheme.headline6,
                ),
                PopupMenuButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black38,
                  ),
                  itemBuilder: (BuildContext context) {
                    return {'History'}.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ],
            ),
            // Divider(
            //   thickness: 1,
            // ),
          ],
        ),
      ),
    );
  }
}
