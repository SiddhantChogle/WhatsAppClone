import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsappHome.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsAppClone",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        // accentColor: Color(0xff25D366),
      ),
      home: WhatsAppHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
