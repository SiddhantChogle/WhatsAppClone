class ChatData {
  final String name;
  final String message;
  final String time;
  final bool isSent;
  final bool isRecieved;
  final String avatar;
  final int numberOfMessages;

  ChatData(
      {this.name,
      this.message,
      this.time,
      this.isSent,
      this.isRecieved,
      this.avatar,
      this.numberOfMessages});
}

List<ChatData> myChats = [
  ChatData(
      name: "Siddhant Chogle",
      message: "Hello",
      time: "2:35",
      isSent: false,
      isRecieved: false,
      avatar: "lib/assets/images/contact.png",
      numberOfMessages: 3),
  ChatData(
      name: "Siddhant Chogle",
      message: "Hello",
      time: "1:15",
      isSent: false,
      isRecieved: false,
      avatar: "lib/assets/images/group.png",
      numberOfMessages: 5),
  ChatData(
      name: "Siddhant Chogle",
      message: "Hello",
      time: "10:26",
      isSent: false,
      isRecieved: false,
      avatar: "lib/assets/images/contact.png",
      numberOfMessages: 1),
  ChatData(
      name: "Siddhant Chogle",
      message: "Hello",
      time: "8:36",
      isSent: false,
      isRecieved: true,
      avatar: "lib/assets/images/contact.png",
      numberOfMessages: 0),
  ChatData(
      name: "Siddhant Chogle",
      message:
          "Game creation in any programming language is very rewarding, and also makes for a great teaching tool. With game development, you often have quite a bit of logic, mathematics, physics, artificial intelligence, and other things, all of which come together for game creation. Not only this, but the topic is games, so it can be very fun.",
      time: "yesterday",
      isSent: true,
      isRecieved: true,
      avatar: "lib/assets/images/contact.png",
      numberOfMessages: 0),
  ChatData(
      name: "Siddhant Chogle",
      message:
          "Game creation in any programming language is very rewarding, and also makes for a great teaching tool. With game development, you often have quite a bit of logic, mathematics, physics, artificial intelligence, and other things, all of which come together for game creation. Not only this, but the topic is games, so it can be very fun.",
      time: "yesterday",
      isSent: true,
      isRecieved: true,
      avatar: "lib/assets/images/contact.png",
      numberOfMessages: 0),
  ChatData(
      name: "Siddhant Chogle",
      message:
          "Game creation in any programming language is very rewarding, and also makes for a great teaching tool. With game development, you often have quite a bit of logic, mathematics, physics, artificial intelligence, and other things, all of which come together for game creation. Not only this, but the topic is games, so it can be very fun.",
      time: "yesterday",
      isSent: false,
      isRecieved: true,
      avatar: "lib/assets/images/contact.png",
      numberOfMessages: 0),
  ChatData(
      name: "Siddhant Chogle",
      message:
          "Game creation in any programming language is very rewarding, and also makes for a great teaching tool. With game development, you often have quite a bit of logic, mathematics, physics, artificial intelligence, and other things, all of which come together for game creation. Not only this, but the topic is games, so it can be very fun.",
      time: "yesterday",
      isSent: false,
      isRecieved: true,
      avatar: "lib/assets/images/contact.png",
      numberOfMessages: 0),
];
