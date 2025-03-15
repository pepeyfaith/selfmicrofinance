import 'dart:convert';

import 'package:credit_app/controllers/customer_view.dart';
import 'package:credit_app/controllers/loginController.dart';
import 'package:credit_app/models/customerModel.dart';
import 'package:credit_app/views/Home/home_screen.dart';
import 'package:credit_app/views/Home/home_screen2.dart';
import 'package:credit_app/views/HomeLoan/basic_detail_entry_hlscreen6.dart';
import 'package:credit_app/views/LoanApplications/loan_application_screen.dart';
import 'package:credit_app/views/PersonalLoan/personal_loan_basic_detail_entry_plscreen3.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginController> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  Future<void> loginUser(BuildContext context) async {
    final url = Uri.parse('https://flutter.atma.co.tz/loginfey.php');

    final response = await http.post(url, body: {
      'username': _username.text,
      'password': _password.text,
    });

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('Decoded JSON: $data');

      bool success = data['success'];

      if (success) {
        // Login successful, navigate to the home screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        String message = data['message'];
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Login Failed'),
              content: Text(message),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to connect to the server.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Company Logo
            Image.asset(
              'assets/self.png', // Update with your logo image asset path
              width: 150.0, // Adjust the width as needed
              height: 150.0, // Adjust the height as needed
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              // onPressed: () => loginUser(context),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => LoanApplicationScreen()),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
