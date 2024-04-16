import 'package:flutter/material.dart';

class CheckInCheckOutButton extends StatefulWidget {
  const CheckInCheckOutButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CheckInCheckOutButtonState createState() => _CheckInCheckOutButtonState();
}

class _CheckInCheckOutButtonState extends State<CheckInCheckOutButton> {
  Color _backgroundColor = Colors.green;
  String _buttonText = 'Check In';
  bool _isCheckedIn = false;

  void _changeBackgroundColorAndText() {
    setState(() {
      if (_isCheckedIn) {
        _backgroundColor = Colors.green;
        _buttonText = 'Check In';
      } else {
        _backgroundColor = Colors.red;
        _buttonText = 'Check Out';
      }
      _isCheckedIn = !_isCheckedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeBackgroundColorAndText();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: _backgroundColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.front_hand_sharp,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Press and hold to ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              _buttonText,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
