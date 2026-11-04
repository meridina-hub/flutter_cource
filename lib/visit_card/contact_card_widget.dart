import 'package:flutter/material.dart';

class ContactCardWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContactCardWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          Icon(icon, color: Color(0xff056c5c), size: 28),
          const SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(
              color: Color(0xff056c5c),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
