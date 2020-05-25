import'package:flutter/widgets.dart';
import'package:flutter/foundation.dart';
import'package:flutter/material.dart';
import'package:vibing/register_user.dart';
import 'package:vibing/forgot_password.dart';
import 'package:vibing/main.dart';

class UserLogin extends StatelessWidget {

   static final incorrect_icon = Icon(
     Icons.error,
     color: Colors.pink,
   );
   static final TextEditingController emailContr = new TextEditingController();
   static final TextEditingController passwordContr = new TextEditingController();

   String get emailid => emailContr.text;
   String get password => passwordContr.text;

   final _email = Container(
     padding: EdgeInsets.only(left: 10, right: 10),
     child: TextField(
       keyboardType: TextInputType.emailAddress,
       controller: emailContr,
       autofocus: false,
       decoration: InputDecoration(
         hintText: 'Enter Email Address',
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10)
         ),
       ),
     ),
   );

   final _pass = Container(
     padding: EdgeInsets.only(left: 10, right: 10),
     child: TextField(
       controller: passwordContr,
       obscureText: true,
       autofocus: false,
       decoration: InputDecoration(
         hintText: 'Enter password',
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10)
         ),
       ),
     ),
   );

  /*final login_button =

    },
  );
   */

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: <Widget>[
          SizedBox(height: 200,),
          Text('Vibing',
          style:TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 64,
          ),
          ),
          SizedBox(height: 100,),
         _email,
        SizedBox(height: 20,),
        _pass,
        SizedBox(height:30),
        RaisedButton(

        color: Colors.yellow,
        elevation: 5,
        child: Text('Login'),
    onPressed: () {

      if (emailid == 'rohit@gmail.com' && password == 'admin123') {
        print('Credentials Correct');
        Navigator.push(context, MaterialPageRoute(builder:(context)=>Home()),);
      }
      else
        {
          print('Incorrect username or password');
        }

    }
    ),
    SizedBox(height:10),
    FlatButton(
      child: Text('Forgot password'),
      onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>ForgotPassword()),)
    ),
          SizedBox(height:10),
          FlatButton(
              child: Text('New? Register here!'),
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>UserReg()),)
          ),
    ],
      ),
    );
  }

}
