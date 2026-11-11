import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiceWidget extends StatelessWidget {
  final int diceNumber;
  final VoidCallback ontap;
  final Color? color;

  const DiceWidget({
    super.key,
    required this.diceNumber,
    required this.ontap,
    this.color = Colors.white,
  });

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TweenAnimationBuilder<double>(
            key: ValueKey(diceNumber),
            tween: Tween<double>(begin: 0, end: 1),
            duration: const Duration(milliseconds: 300),
            builder: (context, value, child) {
              return Transform.scale(
                scale: 0.5 + (0.5 * value),
                child: Transform.rotate(angle: value * 6.28, child: child),
              );
            },

            child: SvgPicture.asset(
              'assets/dice_app/images/dice$diceNumber.svg',
            ),
          ),
        ),
      ),
    );
  }
}
