import 'package:flutter/material.dart';

class Traffic extends StatefulWidget {
  const Traffic({Key? key}) : super(key: key);

  @override
  _TrafficState createState() => _TrafficState();
}

class _TrafficState extends State<Traffic> {
  int counter = 0;
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("traffic light"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: GestureDetector(
          onTap: () {
            print(counter);
            setState(
              () {
                if (counter == 0) {
                  imageNumber = 1;
                } else if (counter == 1) {
                  imageNumber = 2;
                } else if (counter == 2) {
                  imageNumber = 3;
                }
                counter++;
                if (counter > 2) {
                  counter = 0;
                }
              },
            );
          },
          child: Center(
            child: Image(
              image: AssetImage(
                "images/$imageNumber.png",
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
