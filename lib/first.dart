import 'package:flutter/material.dart';

class ook extends StatefulWidget {
  const ook({super.key});

  @override
  State<ook> createState() => _ookState();
}

class _ookState extends State<ook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children:[GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Container(
        color: Colors.blue,
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            'Item $index',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
            );
          },
        )
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                top: 100
              ),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),
            )
            ] 
      )
    );
  }
}