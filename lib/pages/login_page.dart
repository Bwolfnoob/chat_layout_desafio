import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxvms_architecture_maybe/pages/messages_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var theme = new ThemeData(hintColor: Color(0xff3D3D45));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff22222a),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: -50,
            right: -80,
            child: _buildBubleRed(),
          ),
          Positioned(
            top: 25,
            left: -15,
            child: _buildBubleGrey(),
          ),
          Positioned(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildBubleRed() {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: RadialGradient(colors: <Color>[
            Color(0xffEf4950),
            Color(0xffE3324f),
          ]),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2.0,
              blurRadius: 10.0,
              color: Colors.black45,
            ),
          ]),
    );
  }

  Widget _buildBubleGrey() {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75),
          color: Color(0xff2c2c36),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2.0,
              blurRadius: 5.0,
              color: Colors.black45,
            ),
          ]),
    );
  }

  Widget _buildContent() {
    return ListView(
      physics: PageScrollPhysics(),
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 200,
      ),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Meet in Bar",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              "by Bwolf",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 150,
            ),
            _formLogin(),
          ],
        ),
      ],
    );
  }

  Widget _formLogin() {
    return Theme(
        data: theme,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelStyle: TextStyle(color: Color(0xffA9A9B5)),
                  hintText: 'email@email.com',
                  labelText: 'Your email',
                  hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                ),
              ),
              TextFormField(
                obscureText: true,
                style: TextStyle(color: Colors.white, letterSpacing: 5),
                autocorrect: false,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelStyle:
                        TextStyle(color: Color(0xffA9A9B5), letterSpacing: 0),
                    labelText: 'Your password',
                    hintText: '*******',
                    hintStyle: TextStyle(
                      color: Color(0xffFFFFFF),
                      letterSpacing: 5,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (BuildContext context) => MessagesPage()));
                },
                child: Material(
                  color: Color(0xff2C2C36),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(125),
                      gradient: RadialGradient(colors: <Color>[
                        Color(0xffEF4C61),
                        Color(0xffEE485E)
                      ]),
                    ),
                  ),
                ),
              ),
              Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "Log in and accepting the ",
                  style: TextStyle(
                    color: Color(0xffA9A9B3),
                    fontSize: 11,
                  ),
                ),
                TextSpan(
                  text: "Term and Conditions",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    textBaseline: TextBaseline.alphabetic,
                    color: Color(0xffA9A9B3),
                    fontSize: 11,
                  ),
                ),
              ]))
            ],
          ),
        ));
  }
}
