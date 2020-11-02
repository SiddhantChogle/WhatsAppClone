import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/pages/chatsPage.dart';
import 'pages/pages.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Icon> fabIcons = [
    Icon(Icons.camera),
    Icon(Icons.message),
    Icon(Icons.camera_alt),
    Icon(Icons.add_call)
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 22,
            onPressed: () => print("Search"),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 22,
            onPressed: () => print("Options"),
          ),
        ],
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(
                // iconMargin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: Container(
                  // padding: EdgeInsets.only(left: 0, right: 10),
                  alignment: Alignment.center,
                  width: 24,
                  child: Icon(
                    Icons.camera_alt,
                    size: 22,
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: (MediaQuery.of(context).size.width - 24) / 4.6,
                  alignment: Alignment.center,
                  child: Text(
                    "CHATS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: (MediaQuery.of(context).size.width - 24) / 4.6,
                  alignment: Alignment.center,
                  child: Text(
                    "STATUS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: (MediaQuery.of(context).size.width - 24) / 4.6,
                  alignment: Alignment.center,
                  child: Text(
                    "CALLS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        Center(
          child: Text(
            "CAMERA",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
        ChatsPage(),
        StatusPage(),
        CallsPage(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff25D366),
        child: fabIcons[_tabController.index],
      ),
    );
  }
}
