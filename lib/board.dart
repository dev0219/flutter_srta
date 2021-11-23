import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'main.dart';
import 'login.dart';
import 'googlescreen.dart';
import 'navbar.dart';
import 'messageboard.dart';
import 'dashboard.dart';
    
class Example extends StatefulWidget {

  final int index;

  const Example({Key? key, required this.index}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;

  void _loginFunction(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  // late List<Widget> listScreens;
  List<Widget> listScreens = [];
  void initState() {
    super.initState();
    _selectedIndex = widget.index;
    listScreens = [
      Dashboard(),
      Messageboard(),

    ];
  }
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: listScreens[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color (0xff3B4E7E),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.grey,),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book,color: Colors.grey,),
                label: 'Message Board',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
      ),
    );
  }

  Widget _searchIcon() {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: (){},
            child: Icon(Icons.search,color: Colors.white,),

          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: _loginFunction,
            child: Icon(Icons.account_circle_sharp ,color: Colors.white,),
          ),
        ],
      ),
    );
  }

  Widget _text() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      alignment: Alignment.centerLeft,
      color: Colors.transparent,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
        ),
      ),
    );
  }

  Widget _drawer() {
    return IconButton(
        icon: Icon(Icons.menu,color: Colors.white,),
        onPressed: () {

        }
    );
  }
}


