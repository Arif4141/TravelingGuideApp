class FeedData {
  final String? title, caption, type, link, uploader;
  final DateTime timeStamp;
  final int? like;

  FeedData({
    this.uploader,
    this.title,
    this.caption,
    this.type,
    this.link,
    required this.timeStamp,
    this.like,
  });
}

List FeedContent = [
  FeedData(
    uploader: "Acerolla",
    title: "Liburan di Bali",
    caption: "Lorem Ipsum",
    type: "picture",
    link: "",
    timeStamp: DateTime(2021, 12, 21, 1, 26, 02),
    like: 2000,
  ),
  FeedData(
    uploader: "Genish",
    title: "Liburan di Bandung",
    caption: "Lorem Ipsum",
    type: "picture",
    link: "",
    timeStamp: DateTime(2021, 09, 12, 11, 40, 25),
    like: 2000,
  ),
  FeedData(
    uploader: "Acerolla",
    title: "Liburan di Bali",
    caption: "Lorem Ipsum",
    type: "picture",
    link: "",
    timeStamp: DateTime(2021, 08, 12, 13, 20, 25),
    like: 2000,
  ),
];
