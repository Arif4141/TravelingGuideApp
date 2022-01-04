class NotifDummy {
  final String title, caption, type, uploader;
  final DateTime timeStamp;
  bool read;

  NotifDummy(
      {required this.title,
      required this.caption,
      required this.type,
      required this.uploader,
      required this.timeStamp,
      required this.read});
}

List NotifContent = [
  NotifDummy(
      title: "System Update",
      caption: "Lorem Ipsum awjdsnajalwfnlaawkfanwfakanwfanflan wfalwfkln",
      type: "SysUp",
      uploader: "Admin",
      timeStamp: DateTime(2021, 12, 29, 1, 26, 02),
      read: false),
  NotifDummy(
      title: "Lorem Ipsum",
      caption: "Lorem Ipsum awjdsnajalwfnlaawkfanwfakanwfanflan wfalwfkln",
      type: "News",
      uploader: "Admin",
      timeStamp: DateTime(2021, 12, 28, 1, 26, 02),
      read: false),
  NotifDummy(
      title: "System Update",
      caption: "Lorem Ipsum awjdsnajalwfnlaawkfanwfakanwfanflan wfalwfkln",
      type: "SysUp",
      uploader: "Admin",
      timeStamp: DateTime(2021, 12, 20, 1, 26, 02),
      read: true),
  NotifDummy(
      title: "That Whatever Fox",
      caption: "Lorem Ipsum awjdsnajalwfnlaawkfanwfakanwfanflan wfalwfkln",
      type: "News",
      uploader: "Admin",
      timeStamp: DateTime(2021, 12, 15, 1, 26, 02),
      read: true),
];
