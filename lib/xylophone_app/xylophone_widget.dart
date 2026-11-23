import 'package:flutter/material.dart';

class XylophoneWidget extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;
  const XylophoneWidget({super.key, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.white,
          highlightColor: Colors.white,
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}
