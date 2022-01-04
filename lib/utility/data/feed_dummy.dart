class FeedData {
  final String? title, caption, type, link, uploader;
  final DateTime timeStamp;
  final int? like, commentNum, shareNum;

  FeedData(
      {this.uploader,
      this.title,
      this.caption,
      this.type,
      this.link,
      required this.timeStamp,
      this.like,
      this.commentNum,
      this.shareNum});

  // @override
  // String toString() {
  //   return '{ ${this.uploader}, ${this.title}, ${this.caption}, ${this.type}, ${this.link}, ${this.timeStamp}, ${this.like}, ${this.commentNum}, ${this.shareNum} }';
  // }

  // factory FeedData.fromJson(Map<String, dynamic> json) {
  //   return FeedData(
  //     uploader: json['uploader'],
  //     title: json['title'],
  //     caption: json['caption'],
  //     type: json['type'],
  //     link: json['link'],
  //     timeStamp: json['timeStamp'],
  //     like: json['like'],
  //     commentNum: json['commentNum'],
  //     shareNum: json['shareNum'],
  //   );
  // }
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
    commentNum: 150,
    shareNum: 78,
  ),
  FeedData(
    uploader: "Genish",
    title: "Liburan di Bandung",
    caption: "Lorem Ipsum",
    type: "picture",
    link: "",
    timeStamp: DateTime(2021, 09, 12, 11, 40, 25),
    like: 32566,
    commentNum: 2000,
    shareNum: 90,
  ),
  FeedData(
    uploader: "Acerolla",
    title: "Liburan di Bali",
    caption: "Lorem Ipsum",
    type: "picture",
    link: "",
    timeStamp: DateTime(2021, 08, 12, 13, 20, 25),
    like: 8524,
    commentNum: 300,
    shareNum: 125,
  ),
];
