import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllButtonScreen extends StatelessWidget {
  const AllButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Button'),
      ),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        child: Column(
          children: [
            Text('Elevated Button'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Text Button'),
            TextButton(
              onPressed: () {},
              child: Text(
                'Text Button',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Outlined Button'),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Outlined Button',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Icon Button'),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.access_alarm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
