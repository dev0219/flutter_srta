import 'package:flutter/material.dart';
import 'navbar.dart';
import 'package:app_my_first/components/imports_components.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  int index = 0;

  Widget _chartDashboard() {
    return Expanded(
        child: WebView(
          initialUrl: "https://shardpool-redone.vercel.app/",
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Navbar(index: index,),
            DashboardBar(),
            _chartDashboard(),
          ]
        ),
      ),

    );
  }
}

