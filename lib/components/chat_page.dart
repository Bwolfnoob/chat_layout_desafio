import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff22222a),
      appBar: AppBar(
        title: Center(child: Text("Lexie Hurolanto")),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xff223BF9DD),
            ),
            padding: EdgeInsets.all(0),
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 30,
                  child: Center(
                    child: Text(
                      "To start with chat confirm this conversation",
                      style: TextStyle(color: Color(0xff3BF9DD), fontSize: 12),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xff3BF9DD),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return index % 2 == 0
                    ? OwnerMessage()
                    : Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          //height: 100,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15,
                                child: ClipOval(
                                  child: Image.network(
                                    "https://scontent.fcxj2-1.fna.fbcdn.net/v/t31.0-8/665253_471142639597703_534196741_o.jpg?_nc_cat=106&_nc_ht=scontent.fcxj2-1.fna&oh=afe2471283324b32b0f7961f9984071b&oe=5D180660",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14),
                                    bottomRight: Radius.circular(14),
                                    bottomLeft: Radius.circular(0),
                                    topRight: Radius.circular(14)),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  constraints: BoxConstraints(
                                    maxWidth: 250,
                                  ),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                    Color(0xffE3324F),
                                    Color(0xffF6596A)
                                  ])),
                                  child: SizedBox(
                                    child: Text(
                                      "Hey Bwolf,WidgetsFlutterB inding&Bindi ngBase&Gestur eBinding&Servic esBindin g&Schedule rBinding.",
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      maxLines: 9999,
                                      style: TextStyle(
                                        color: Colors.white,
                                        height: 1.5,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
              },
            ),
          ),
          _buildBottomBar(context)
        ],
      ),
    );
  }

  Widget _buildBottomBar(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: BorderDirectional(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              maxLength: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Type your message",
                fillColor: Colors.green,
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                contentPadding: EdgeInsets.only(left: 25),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.image, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            onPressed: () {},
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            margin: EdgeInsets.only(right: 20, left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFEF495F),
            ),
            child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}

class OwnerMessage extends StatelessWidget {
  const OwnerMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(14),
                  topRight: Radius.circular(14)),
              child: Container(
                padding: EdgeInsets.all(15),
                //width: MediaQuery.of(context).size.width / 1.7,
                color: Color(0xff2C2C36),
                child: Text(
                  "Hi Lexie, how are u?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
