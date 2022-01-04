import 'package:ardin/utility/data/feed_dummy.dart';
import 'package:flutter/material.dart';

class FeedVid extends StatefulWidget {
  const FeedVid({Key? key}) : super(key: key);

  @override
  _FeedVidState createState() => _FeedVidState();
}

class _FeedVidState extends State<FeedVid> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: FeedContent.length,
                  itemBuilder: (context, index) {
                    return buildContainer(FeedContent[index], context);
                  },
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100,
                    // color: Colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "APP NAME/LOGO",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        ),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (selected == true) {
                                      selected = !selected;
                                      print(
                                          "Selected is " + selected.toString());
                                    }
                                  });
                                },
                                child: Text(
                                  "Following",
                                  style: selected == true
                                      ? TextStyle(
                                          color: Colors.white, fontSize: 15)
                                      : TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 15),
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const VerticalDivider(
                                width: 10,
                                thickness: 1,
                                indent: 4,
                                endIndent: 4,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (selected == false) {
                                      selected = !selected;
                                      print(
                                          "Selected is " + selected.toString());
                                    }
                                  });
                                },
                                child: Text(
                                  "For You",
                                  style: selected == false
                                      ? TextStyle(
                                          color: Colors.white, fontSize: 15)
                                      : TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildContainer(FeedData Data, BuildContext context) {
    final timeThen = Data.timeStamp;
    final timeNow = DateTime.now();
    final timeDifferenceSec = timeNow.difference(timeThen).inSeconds;
    final timeDifferenceMin = timeNow.difference(timeThen).inMinutes;
    final timeDifferenceHour = timeNow.difference(timeThen).inHours;
    final timeDifferenceDays = timeNow.difference(timeThen).inDays;
    return Container(
      // height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ExpansionTile(
              title: Text(
                Data.title.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
              subtitle: Text(
                Data.caption.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              children: <Widget>[
                ListTile(
                  title: timeDifferenceDays >= 1
                      ? Text(
                          timeDifferenceDays.toString() + " Days ago",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        )
                      : timeDifferenceHour >= 1
                          ? Text(
                              timeDifferenceHour.toString() + " Hours ago",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            )
                          : timeDifferenceMin >= 1
                              ? Text(
                                  timeDifferenceMin.toString() + " Minutes ago",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              : Text(
                                  timeDifferenceSec.toString() + " Seconds ago",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            // color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 80,
                  width: 60,
                  // color: Colors.orange,
                  child: Stack(
                    children: [
                      const Align(
                        child: CircleAvatar(
                          child: Icon(
                            Icons.person,
                            size: 40,
                          ),
                          radius: 30,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: IconButton(
                          color: Colors.redAccent,
                          iconSize: 25,
                          onPressed: () {},
                          icon: const Icon(Icons.add_circle),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
                Text(
                  Data.like.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
                IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                ),
                Text(
                  Data.commentNum.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
                IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
                Text(
                  Data.shareNum.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
