import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Route'),
      ),
      body: const Center(
        child: Column(children: <Widget>[
          Text('This is a new route.', textAlign: TextAlign.left),
          Text(
            "Hello world! I'm Jack. Hello world! I'm Jack.Hello world! I'm Jack.Hello world! I'm Jack.Hello world! I'm Jack.",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello world",
            textScaleFactor: 1.5,
          ),
          Text(
            'nihao',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: 'Home: '),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.blue),
              // recognizer: _tapRecognizer
            ),
          ])),
          DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              child: Column(
                children: <Widget>[
                  Text('Hello world'),
                  Text('I am Jack'),
                  Text(
                    'Your friend',
                    style: TextStyle(
                      inherit: false,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
