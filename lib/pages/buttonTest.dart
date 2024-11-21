import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button  '),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  print('ElevatedButton');
                },
                child: Text('normal')),
            TextButton(onPressed: () {}, child: Text('TextButton')),
            OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
            IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down)),
            TextButton.icon(
                onPressed: () {},
                label: Text('TextButton'),
                icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
