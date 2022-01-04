class PlaceData {
  String? title, caption, type, link, uploader, location, subtitle;
  int? like, commentNum, shareNum, id;
  bool? fav;

  PlaceData(
      {this.uploader,
      this.id,
      this.location,
      this.subtitle,
      this.title,
      this.caption,
      this.type,
      this.link,
      this.like,
      this.fav,
      this.commentNum,
      this.shareNum});

  PlaceData.fromJson(Map<String, dynamic> json) {
    uploader = json['uploader'];
    id = json['id'];
    location = json['location'];
    subtitle = json['subtitle'];
    title = json['title'];
    caption = json['caption'];
    type = json['type'];
    fav = json['fav'];
    link = json['link'];
    like = json['like'];
    commentNum = json['commentNum'];
    shareNum = json['shareNum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uploader'] = this.uploader;
    data['fav'] = this.fav;
    data['id'] = this.id;
    data['location'] = this.location;
    data['subtitle'] = this.subtitle;
    data['title'] = this.title;
    data['caption'] = this.caption;
    data['type'] = this.type;
    data['link'] = this.link;
    data['like'] = this.like;
    data['commentNum'] = this.commentNum;
    data['shareNum'] = this.shareNum;
    return data;
  }

  @override
  String toString() {
    return '$id';
  }
}

List PlaceContent = [
  PlaceData(
    fav: false,
    id: 1,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 234235,
    commentNum: 222,
    shareNum: 3221,
  ),
  PlaceData(
    fav: false,
    id: 2,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 4242,
    commentNum: 300,
    shareNum: 444,
  ),
  PlaceData(
    fav: false,
    id: 3,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 8524,
    commentNum: 300,
    shareNum: 125,
  ),
  PlaceData(
    fav: false,
    id: 4,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 2324,
    commentNum: 123,
    shareNum: 124,
  ),
  PlaceData(
    fav: false,
    id: 5,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 1242,
    commentNum: 124,
    shareNum: 442,
  ),
  PlaceData(
    fav: false,
    id: 6,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 4121,
    commentNum: 12423,
    shareNum: 1241,
  ),
  PlaceData(
    fav: false,
    id: 7,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 412,
    commentNum: 352,
    shareNum: 22,
  ),
  PlaceData(
    fav: false,
    id: 7,
    location: "City, Province",
    subtitle: "Location Subtitle",
    uploader: "Admin",
    title: "Location Template",
    caption:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    type: "Location Type",
    link: "Some Wb Link",
    like: 34534,
    commentNum: 234,
    shareNum: 1412,
  ),
];

List FavList = [];
