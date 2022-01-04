import 'package:ardin/menu/header/header.dart';
import 'package:ardin/menu/navbar/bottom_nav.dart';
import 'package:ardin/utility/constant.dart';
import 'package:ardin/utility/data/notif_dummy.dart';
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
              children: [
                Header(),
                // Expanded(
                //   child: Center(
                //     child: Text(
                //       "No Notification For Now",
                //       style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.black26,
                //       ),
                //     ),
                //   ),
                // ),
                Expanded(
                  child: ListView.builder(
                    itemCount: NotifContent.length,
                    itemBuilder: (context, index) {
                      return NotificationCard(NotifContent[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector NotificationCard(NotifDummy Data) {
    final timeThen = Data.timeStamp;
    final timeNow = DateTime.now();
    final timeDifferenceSec = timeNow.difference(timeThen).inSeconds;
    final timeDifferenceMin = timeNow.difference(timeThen).inMinutes;
    final timeDifferenceHour = timeNow.difference(timeThen).inHours;
    final timeDifferenceDays = timeNow.difference(timeThen).inDays;

    return GestureDetector(
      onTap: () {
        print("ontap success");
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                // BoxShadow(
                //   color: Colors.grey,
                //   spreadRadius: 0.2,
                //   blurRadius: 3,
                //   offset: Offset(0, 0),
                // ),
              ],
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Data.type == "SysUp" ? Icons.mail : Icons.notifications,
                      color: Colors.black54,
                      size: 40,
                    ),
                    if (Data.read == false)
                      const Text(
                        "Unread",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                  ],
                ),
                Expanded(
                  child: ExpansionTile(
                    title: Text(
                      Data.title.toString(),
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black54,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                    subtitle: timeDifferenceDays >= 1
                        ? Text(
                            timeDifferenceDays.toString() + " Days ago",
                          )
                        : timeDifferenceHour >= 1
                            ? Text(
                                timeDifferenceHour.toString() + " Hours ago",
                              )
                            : timeDifferenceMin >= 1
                                ? Text(
                                    timeDifferenceMin.toString() +
                                        " Minutes ago",
                                  )
                                : Text(
                                    timeDifferenceSec.toString() +
                                        " Seconds ago",
                                  ),
                    children: [
                      ListTile(
                        title: Text(
                          Data.caption.toString(),
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
