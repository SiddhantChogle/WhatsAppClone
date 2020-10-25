class StatusData {
  String name;
  String time;
  String statusImage;

  StatusData({
    this.name,
    this.time,
    this.statusImage,
  });
}

List<StatusData> statusList = [
  StatusData(
    name: "Siddhant Chogle",
    time: "13:35",
    statusImage: "lib/assets/images/contact.png",
  ),
  StatusData(
    name: "Ajit Goud",
    time: "Yesterday, 22:08",
    statusImage: "lib/assets/images/contact.png",
  ),
  StatusData(
    name: "Aviraj Chindarkar",
    time: "Yesterday, 19:46",
    statusImage: "lib/assets/images/contact.png",
  ),
];
