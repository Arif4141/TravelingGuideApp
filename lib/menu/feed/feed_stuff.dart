import 'package:ardin/utility/data/feed_dummy.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FeedStuff extends StatefulWidget {
  const FeedStuff({Key? key}) : super(key: key);

  @override
  _FeedStuffState createState() => _FeedStuffState();
}

class _FeedStuffState extends State<FeedStuff> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    FeedContent.add((FeedContent.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      enablePullDown: true,
      // enablePullUp: true,
      header: WaterDropHeader(),
      child: ListView.builder(
        itemCount: FeedContent.length,
        itemBuilder: (context, index) {
          return FeedCard(FeedContent[index]);
        },
      ),
    );
  }
}

Container FeedCard(FeedData Data) {
  final timeThen = Data.timeStamp;
  final timeNow = DateTime.now();
  final timeDifferenceSec = timeNow.difference(timeThen).inSeconds;
  final timeDifferenceMin = timeNow.difference(timeThen).inMinutes;
  final timeDifferenceHour = timeNow.difference(timeThen).inHours;
  final timeDifferenceDays = timeNow.difference(timeThen).inDays;

  return Container(
    child: Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              child: Icon(Icons.person),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Data.uploader.toString()),
                Text(Data.caption.toString()),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: timeDifferenceDays >= 1
                    ? Text(
                        timeDifferenceDays.toString() + " Days ago",
                      )
                    : timeDifferenceHour >= 1
                        ? Text(
                            timeDifferenceHour.toString() + " Hours ago",
                          )
                        : timeDifferenceMin >= 1
                            ? Text(
                                timeDifferenceMin.toString() + " Minutes ago",
                              )
                            : Text(
                                timeDifferenceSec.toString() + " Seconds ago",
                              ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 150,
          // width: 300,
          color: Colors.black38,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  Data.title.toString(),
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              color: Colors.black54,
              onPressed: () {},
              icon: const Icon(Icons.thumb_up_alt_outlined),
            ),
            Text(
              Data.like.toString(),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
