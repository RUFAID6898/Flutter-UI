import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/CheckIn_and_Checkout_Screen.dart';
import 'package:flutter_ui/widgets/Button_widget.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _handleLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const CheckInAndCheckOutScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'LOGO',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const SizedBox(height: 60.0),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: 'User ID',
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 30.0),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: 'Password',
                fillColor: Colors.grey[200],
              ),
              obscureText: true,
            ),
            const SizedBox(height: 50.0),
            ButtonWidget(
              onTap: () {
                _handleLogin(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
