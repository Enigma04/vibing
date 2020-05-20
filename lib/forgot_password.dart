import 'package:flutter/material.dart';
class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Forgot Password',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('password resetting will be done here')
          ],
        ),
      ),
    );
  }
}
