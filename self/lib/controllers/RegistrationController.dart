import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../views/Login/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({required Key key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool error = false;
  bool sending = false;
  bool success = false;
  String msg = "";
  String phpurl = "YOUR_API_URL_HERE"; // Replace with your API URL

  TextEditingController fname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> sendData() async {
    setState(() {
      sending = true;
    });

    var res = await http.post(Uri.parse(phpurl), body: {
      "fullname": fname.text,
      "phone_number": phonenumber.text,
      "email": email.text,
      "password": password.text,
    });

    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      if (data["error"]) {
        setState(() {
          sending = false;
          error = true;
          msg = data["message"];
        });
      } else {
        fname.text = "";
        phonenumber.text = "";
        email.text = "";
        password.text = "";
        setState(() {
          sending = false;
          success = true;
        });
      }
    } else {
      setState(() {
        error = true;
        msg = "Error during registering.";
        sending = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: fname,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: phonenumber,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: sending ? null : sendData,
              child: sending ? CircularProgressIndicator() : Text('Register'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(LoginScreen());
              },
              child: Text('Login'),
            ),
            if (error) Text(msg),
          ],
        ),
      ),
    );
  }
}
