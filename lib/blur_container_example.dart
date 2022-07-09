import 'package:blur_container/blur_container.dart';
import 'package:flutter/material.dart';

class BlurContainerExample extends StatefulWidget {
  const BlurContainerExample({Key? key}) : super(key: key);

  @override
  State<BlurContainerExample> createState() => _BlurContainerExampleState();
}

class _BlurContainerExampleState extends State<BlurContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/image1.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Center(
          child: BlurContainerWidget(
            width: MediaQuery.of(context).size.width * 0.80,
            height: 150,
            borderRadius: BorderRadius.circular(10),
            child: const Center(
              child: Text(
                'Hello World',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  letterSpacing: 4,
                  fontSize: 45,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
