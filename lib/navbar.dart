import 'package:flutter/material.dart';
import 'login.dart';

class Navbar extends StatefulWidget {
  final int index ;
  const Navbar({Key? key, required this.index}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  void _loginFunction(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  int searchStatus = 0;
  var _controller = TextEditingController();
  @override
  Widget _searchbar() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      padding:EdgeInsets.all(6.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Enter a pin',
          suffixIcon: IconButton(
            padding:EdgeInsets.all(1.0),
            onPressed: _controller.clear,
            icon: Icon(Icons.cancel, color: Colors.grey,),
          ),
        ),
      ),
    );
  }
  Widget _searchIcon() {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                  searchStatus = 1;
              });
            },
            child: Icon(Icons.search,color: Colors.white,),

          ),
          SizedBox(width: 20,),
          InkWell(
            onTap: _loginFunction,
            child: Icon(Icons.person ,color: Colors.white,),
          ),
          SizedBox(width: 10,)
        ],
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
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color (0xff3B4E7E),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(widget.index == 1 && searchStatus == 0) ...[
            Row(
              children: [
                _drawer(),
                Text("Message Board",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,),),
              ],
            ),
            _searchIcon(),
          ] else if(widget.index == 0 && searchStatus == 0) ...[
            Row(
              children: [
                _drawer(),
                Text("Dashboard",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
              ],
            ),
            _searchIcon(),
          ] else if(widget.index == 2 && searchStatus == 0) ...[
            // _searchbar()
              _drawer(),
            Text("SRTA",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
            _searchIcon(),
          ] else if(searchStatus == 1) ...[
            _searchbar()
          ]

        ],
      ),
    );
  }
}
