import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp10/Button%201.dart';
import 'package:myapp10/Button%202.dart';
import 'package:fluttertoast/fluttertoast.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  _showSnackbar() {
    var _mySnackbar = SnackBar(content: Text("ki obostha?"));
    _globalKey.currentState!.showSnackBar(_mySnackbar);
  }

  _showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _globalKey,
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Popup Button"),
            RaisedButton(onPressed: () {
              _showSnackbar();
            }),
            RaisedButton(onPressed: () {
              _showToast();
            }),
          ],
        ),
      ),
    ));
  }
}
