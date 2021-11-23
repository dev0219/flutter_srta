

import 'package:flutter/material.dart';
import 'navbar.dart';
import 'package:app_my_first/components/imports_components.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Messageboard extends StatefulWidget {
  const Messageboard({Key? key}) : super(key: key);

  @override
  _MessageboardState createState() => _MessageboardState();
}

class _MessageboardState extends State<Messageboard> {
   int index = 1;
  @override
  List<Widget> listMessages = [];
  void initState() {
    super.initState();
    listMessages = [
      Text('New Messages',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20.0,color: Colors.grey),),
      MessageListComponent(title: "Battery Full", description: "The battery is full", imageUrl: "imageUrl", date: "25 days ago"),
      MessageListComponent(title: "Battery Full", description: "The battery is full", imageUrl: "imageUrl", date: "30 days ago"),
    ];
  }

  Widget messageboard() {
    return Expanded(
      child: WebView(
        initialUrl: "https://shardpool-redone.vercel.app/",
        javascriptMode: JavascriptMode.unrestricted,
        // children: listMessages,
        // shrinkWrap: true,
      )
    );
  }
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Navbar(index:index),
          DashboardBar(),
          messageboard()
        ],
      )

    );
  }
}
