import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int count;

  const SecondPage({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Тапшырма 2')),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Сан:$count ',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
