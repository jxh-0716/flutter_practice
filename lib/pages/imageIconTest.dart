import 'package:flutter/material.dart';

class ImageIconTest extends StatelessWidget {
  final String icons;

  ImageIconTest({Key? key})
      : icons = "\uE03e \uE237 \uE287",
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageIcon Test'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("image/one.webp",
                width: 40, height: 10, fit: BoxFit.fill),
            Text(
              icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
