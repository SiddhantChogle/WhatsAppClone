import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/Repository/chatData.dart';
import 'package:whatsapp_clone/Repository/repository.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: myChats.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                onTap: () {},
                leading: CircleAvatar(
                  backgroundImage: AssetImage(myChats[index].avatar),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.transparent,
                  radius: 28,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      myChats[index].name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    myChats[index].isRecieved == false
                        ? Text(
                            myChats[index].time,
                            style: TextStyle(
                                color: Color(0xff25D366), fontSize: 14),
                          )
                        : Text(
                            myChats[index].time,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myChats[index].isSent == true
                              ? Row(
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      color: Colors.blue,
                                      size: 18,
                                    ),
                                    SizedBox(width: 3)
                                  ],
                                )
                              : SizedBox(),
                          Container(
                            width: MediaQuery.of(context).size.width - 153,
                            child: Text(
                              myChats[index].message,
                              style: TextStyle(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      myChats[index].numberOfMessages != 0
                          ? Container(
                              alignment: Alignment.center,
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                color: Color(0xff25D366),
                              ),
                              child: Text(
                                myChats[index].numberOfMessages.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 86, right: 12),
                child: Divider(height: 0, thickness: 0.9),
              )
            ],
          ),
        );
      },
    );
  }
}
