import 'package:flutter/material.dart';

class MessageListComponent extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String date;
  MessageListComponent({required this.title ,required this.description,required this.imageUrl,required this.date});

  @override
  _MessageListComponentState createState() => _MessageListComponentState();
}

class _MessageListComponentState extends State<MessageListComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(width: 1, color: Colors.grey)),
      ),
      child: InkWell(
        onTap: (){
          print("on clicking action in message_list_component");
        },
        child: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage("images/SRT-logo-white.png")),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width-80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(widget.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black54),),
                      Text(widget.date, style: TextStyle(fontSize: 14, color: Colors.blue,fontWeight: FontWeight.bold) )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text(widget.description, style: TextStyle(fontSize: 14,color: Colors.black38,fontWeight: FontWeight.w400)),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
