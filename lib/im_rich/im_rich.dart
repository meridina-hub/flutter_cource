import 'package:flutter/material.dart';

class ImRichScreen extends StatelessWidget {
  const ImRichScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecb90b),
      appBar: AppBar(
        backgroundColor: Color(0xffecb90b),
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Colors.black87,
        title: Text(
          "Тапшырма 3",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'Sofia',
              ),
            ),

            SizedBox(
              width: 300,
              height: 350,
              child: Image.asset(
                'assets/im_rich/images/dimond.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
