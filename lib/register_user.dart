import 'package:flutter/material.dart';
import 'package:vibing/User_Login.dart';

class UserReg extends StatelessWidget {

  final formkey = GlobalKey<FormState>();

  void validateAndSave()
  {
    final form = formkey.currentState;
    if(form.validate())
      {
        print('Form is valid');
      }
    else
      {
        print('Form is invalid');
      }
  }

  final notValidIcon = Icon(
    Icons.error,
    color: Colors.pink,
  );
  static final TextEditingController regEmailContr = new TextEditingController();
  static final TextEditingController regPasswordContr = new TextEditingController();
  static final TextEditingController confPassContr = new TextEditingController();

   String get rEmailId => regEmailContr.text;
  String get rPassword => regPasswordContr.text;
  String get conPass => confPassContr.text;

  final _regEmail = Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: regEmailContr,
      autofocus: false,
      validator: (value)=> value.isEmpty? 'Email cannot be empty':null ,
      onSaved: (value)=>  = value,
      decoration: InputDecoration(
        hintText: 'Enter Email Address',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    ),
  );


  final _regpass = Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: TextFormField(
      controller: regPasswordContr,
      obscureText: true,
      autofocus: false,
      validator: (value)=> value.isEmpty? 'Password cannot be empty':null,
      decoration: InputDecoration(
        hintText: 'Enter password',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    ),
  );


  final _confRegPass = Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: TextFormField(
    controller: confPassContr,
    obscureText: true,
    autofocus: false,
      validator: (value)=> value.isEmpty? 'Confirm Password cannot be empty':null,
    decoration: InputDecoration(
      hintText: 'Confirm Password',
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
      ),
    ),
  ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 200,),
              Text('Register',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 64,
                ),
              ),
              SizedBox(height: 100,),
              _regEmail,
              SizedBox(height: 20,),
              _regpass,
              SizedBox(height:30),
              _confRegPass,
              SizedBox(height: 30,),
              RaisedButton(
                onPressed: (){
                  if(conPass.isNotEmpty == rPassword.isNotEmpty)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLogin()));
                  }
                  else if(conPass.isEmpty && rPassword.isEmpty)
                    print('Passwords do not match');
                },
                color: Colors.yellow,
                elevation: 5,
                child: Text('Register!'),
              ),
              SizedBox(height: 20,),
              FlatButton(
                child: Text('Already Registered? Sign in!'),
                onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLogin())) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
