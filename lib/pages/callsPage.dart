import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Repository/repository.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myCalls.length,
      itemBuilder: (context, index) => CallTile(
        name: myCalls[index].name,
        time: myCalls[index].time,
        callImage: myCalls[index].callImage,
        incomming: myCalls[index].incomming,
      ),
    );
  }
}

class CallTile extends StatelessWidget {
  final name, time, callImage, incomming;

  CallTile({this.name, this.time, this.callImage, this.incomming});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
            onTap: () {},
            leading: CircleAvatar(
              backgroundImage: AssetImage(myCalls[1].callImage),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              radius: 28,
            ),
            title: Text(
              this.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      this.incomming == true
                          ? Row(
                              children: [
                                Icon(
                                  Icons.call_received,
                                  color: Colors.red,
                                  size: 18,
                                ),
                                SizedBox(width: 3)
                              ],
                            )
                          : Row(
                              children: [
                                Icon(
                                  Icons.call_made,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                SizedBox(width: 3)
                              ],
                            ),
                      Text(
                        this.time,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.phone,
                color: Color(0xff075E54),
              ),
              onPressed: () => print("Call"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 86, right: 12),
            child: Divider(height: 0, thickness: 0.9),
          )
        ],
      ),
    );
  }
}
