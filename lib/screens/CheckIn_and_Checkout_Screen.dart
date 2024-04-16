import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/CheckInCheckOutButton.dart';

class CheckInAndCheckOutScreen extends StatefulWidget {
  const CheckInAndCheckOutScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CheckInAndCheckOutScreenState createState() =>
      _CheckInAndCheckOutScreenState();
}

class _CheckInAndCheckOutScreenState extends State<CheckInAndCheckOutScreen> {
  late String checkInTime;
  late String checkOutTime;

  @override
  void initState() {
    super.initState();

    DateTime currentTime = DateTime.now();

    checkInTime = '${currentTime.hour}:${currentTime.minute}';

    DateTime checkOutDateTime = currentTime.add(const Duration(hours: 8));
    checkOutTime = '${checkOutDateTime.hour}:${checkOutDateTime.minute}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 30,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Loerm Ipsum',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 60,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Tuesday, 13 February 2024',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const CheckInCheckOutButton(),
            const SizedBox(height: 20.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                ),
                Text(
                  'Kerala, India',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Text(
                  'Shift 2',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.alarm_rounded,
                          color: Colors.green,
                        ),
                        Text(checkInTime),
                        const Text('Check In'),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.alarm_rounded,
                          color: Colors.red,
                        ),
                        Text(checkOutTime),
                        const Text('Check Out'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
