import 'package:flutter/material.dart';
import 'package:flutter_cource/visit_card/contact_card_widget.dart';

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
            const Text(
              "Meridina Keldibek",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),

            const Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 6, bottom: 24),
              height: 1.5,
              width: 220,
              color: Colors.white,
            ),
            const ContactCardWidget(
              icon: Icons.phone_iphone_outlined,
              text: '+996778115882',
            ),
            SizedBox(height: 20),
            const ContactCardWidget(
              icon: Icons.mail_outline,
              text: 'meridina.keldibek@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}
