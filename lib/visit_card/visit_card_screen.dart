import 'package:flutter/material.dart';

class VisitCardScreen extends StatelessWidget {
  const VisitCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Тапшырма 4",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                'assets/visit_card/images/meridina_ligo.jpeg',
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
