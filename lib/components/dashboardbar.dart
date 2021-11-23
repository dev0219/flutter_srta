import 'package:flutter/material.dart';

class DashboardBar extends StatefulWidget {
  const DashboardBar({Key? key}) : super(key: key);

  @override
  _DashboardBarState createState() => _DashboardBarState();
}

class _DashboardBarState extends State<DashboardBar> {
  @override
  Widget _dashboardAction() {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: (){},
            child: Icon(Icons.forum_rounded ,color: Colors.white,),

          ),
          SizedBox(width: 30,),
          InkWell(
            onTap: (){},
            child: Icon(Icons.access_time ,color: Colors.white,),
          ),
          SizedBox(width: 30,),
          InkWell(
            onTap: (){},
            child: Icon(Icons.account_circle ,color: Colors.white,),
          ),
          SizedBox(width: 30,),
          InkWell(
            onTap: (){},
            child: Icon(Icons.menu ,color: Colors.white,),
          ),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
  Widget _drawer() {
    return IconButton(
        icon: Icon(Icons.apps_sharp,color: Colors.white,),
        onPressed: () {

        }
    );
  }
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color (0xff885c7c),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _drawer(),
          _dashboardAction(),
        ],
      ),
    );
  }
}
