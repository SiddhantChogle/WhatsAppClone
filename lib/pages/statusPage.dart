import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Repository/statusData.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
            onTap: () {},
            leading: Stack(
              // alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/images/contact.png"),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.transparent,
                  radius: 28,
                ),
                Positioned(
                  bottom: 0,
                  right: 1,
                  child: Icon(
                    Icons.add_circle,
                    color: Color(0xff25D366),
                    size: 28,
                  ),
                )
              ],
            ),
            title: Text(
              "Siddhant",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text("Tap to add status update"),
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.black26,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              "Viewed Updates",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ),
          StatusItem(
              name: statusList[0].name,
              time: statusList[0].time,
              statusImage: statusList[0].statusImage),
          StatusItem(
              name: statusList[1].name,
              time: statusList[1].time,
              statusImage: statusList[1].statusImage),
          StatusItem(
              name: statusList[2].name,
              time: statusList[2].time,
              statusImage: statusList[2].statusImage),
        ],
      ),
    );
  }
}

class StatusItem extends StatelessWidget {
  final name, time, statusImage;

  StatusItem({this.name, this.time, this.statusImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
          onTap: () {},
          leading: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(this.statusImage),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.transparent,
                radius: 28,
              ),
            ],
          ),
          title: Text(
            this.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(this.time),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 86, right: 12),
          child: Divider(height: 0, thickness: 0.9),
        )
      ],
    );
  }
}
