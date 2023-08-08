import 'package:flutter/material.dart';
import 'homepage.dart'; // Make sure to use the correct import path

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget myText(String label,bool inObsecure ){
    return  Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        obscureText: inObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myText("Username",false),
              myText("password",true),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomePage()),
                      );
                    },
                    child: Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Register'),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
