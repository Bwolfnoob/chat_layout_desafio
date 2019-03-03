import 'package:flutter/material.dart';

class MessageAvatar extends StatelessWidget {
  final bool online;

  const MessageAvatar({
    Key key,
    @required this.online,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 4, right: 6, bottom: 6, top: 6),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(100),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
              child: ClipOval(
                child: Image.network(
                  "https://scontent.fcxj2-1.fna.fbcdn.net/v/t31.0-8/665253_471142639597703_534196741_o.jpg?_nc_cat=106&_nc_ht=scontent.fcxj2-1.fna&oh=afe2471283324b32b0f7961f9984071b&oe=5D180660",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 35,
          child: online
              ? Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Color(0xff3bf9dd),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff3bf9dd),
                            blurRadius: 10,
                            offset: Offset(1, 2))
                      ]),
                )
              : Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xffA9A9B5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
        )
      ],
    );
  }
}
